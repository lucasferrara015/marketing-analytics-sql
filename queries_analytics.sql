-- -----------------------------------------------------
-- Base de Datos: marketing_analytics_db
-- Archivo: queries_analytics.sql
-- Consultas de Negocio y Análisis de Rendimiento
-- -----------------------------------------------------
USE marketing_analytics_db;

-- -----------------------------------------------------
-- Caso 1: Clics Totales por Campaña
-- Objetivo: Identificar las campañas que generan mayor tracción e interacción.
-- Optimización: Aprovecha el índice compuesto `idx_interacciones_campana_tipo(campana_id, tipo_interaccion)`.
-- -----------------------------------------------------
SELECT 
    c.campana_id,
    c.nombre_campana,
    COUNT(i.interaccion_id) AS total_clics
FROM campanas c
INNER JOIN interacciones_campana i 
    ON c.campana_id = i.campana_id
WHERE i.tipo_interaccion = 'clic'
GROUP BY 
    c.campana_id,
    c.nombre_campana
ORDER BY total_clics DESC;

-- -----------------------------------------------------
-- Caso 2: Tasa de Clics por Campaña (Click-Through Rate - CTR)
-- Objetivo: Calcular la relación percentual entre impresiones/envíos y clics.
-- Optimización: Utiliza la llave foránea e índices de tipo de interacción.
-- -----------------------------------------------------
SELECT 
    c.campana_id,
    c.nombre_campana,
    COUNT(i.interaccion_id) AS total_interacciones,
    SUM(CASE WHEN i.tipo_interaccion = 'clic' THEN 1 ELSE 0 END) AS total_clics,
    ROUND(
        (SUM(CASE WHEN i.tipo_interaccion = 'clic' THEN 1 ELSE 0 END) * 100.0) / 
        NULLIF(COUNT(i.interaccion_id), 0), 
        2
    ) AS porcentaje_ctr
FROM campanas c
LEFT JOIN interacciones_campana i 
    ON c.campana_id = i.campana_id
GROUP BY 
    c.campana_id,
    c.nombre_campana
ORDER BY porcentaje_ctr DESC;

-- -----------------------------------------------------
-- Caso 3: Rendimiento por Canal Publicitario
-- Objetivo: Medir el volumen de conversiones e ingresos por medio de difusión.
-- Optimización: Aprovecha el índice `idx_conversiones_campana` en el JOIN de conversiones.
-- -----------------------------------------------------
SELECT 
    c.canal,
    COUNT(conv.conversion_id) AS total_conversiones,
    SUM(conv.monto_ingreso) AS ingreso_total
FROM campanas c
INNER JOIN conversiones conv 
    ON c.campana_id = conv.campana_id
GROUP BY c.canal
ORDER BY total_conversiones DESC;

-- -----------------------------------------------------
-- Caso 4: Ingresos por Segmento de Cliente
-- Objetivo: Determinar qué perfil de cliente (Nuevo, Recurrente, VIP) genera mayor ingreso.
-- Optimización: Utiliza el índice `idx_clientes_segmento` para la agrupación.
-- -----------------------------------------------------
SELECT 
    cli.segmento_cliente,
    COUNT(DISTINCT cli.cliente_id) AS clientes_unicos,
    SUM(conv.monto_ingreso) AS ingreso_total,
    ROUND(AVG(conv.monto_ingreso), 2) AS ingreso_promedio_por_conversion
FROM clientes cli
INNER JOIN conversiones conv 
    ON cli.cliente_id = conv.cliente_id
GROUP BY cli.segmento_cliente
ORDER BY ingreso_total DESC;

-- -----------------------------------------------------
-- Caso 5: Retorno sobre la Inversión (ROI) Neto por Campaña
-- Objetivo: Evaluar la ganancia neta y porcentaje de rentabilidad sobre el presupuesto.
-- Optimización: Cruza claves foráneas optimizadas mediante los índices de campañas y conversiones.
-- -----------------------------------------------------
SELECT 
    c.campana_id,
    c.nombre_campana,
    c.canal,
    c.presupuesto,
    COALESCE(SUM(conv.monto_ingreso), 0) AS ingreso_total,
    (COALESCE(SUM(conv.monto_ingreso), 0) - c.presupuesto) AS roi_neto,
    CASE 
        WHEN c.presupuesto > 0 THEN 
            ROUND(((COALESCE(SUM(conv.monto_ingreso), 0) - c.presupuesto) / c.presupuesto) * 100, 2)
        ELSE 0 
    END AS porcentaje_roi
FROM campanas c
LEFT JOIN conversiones conv 
    ON c.campana_id = conv.campana_id
GROUP BY 
    c.campana_id,
    c.nombre_campana,
    c.canal,
    c.presupuesto
ORDER BY roi_neto DESC;
