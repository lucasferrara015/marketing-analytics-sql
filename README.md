# 📊 Proyecto de Marketing Analytics: Análisis de Rendimiento de Campañas en SQL

## 🎯 Contexto y Objetivo
Proyecto de consultoría de datos orientado a evaluar el rendimiento comercial de campañas publicitarias mediante bases de datos relacionales en **MySQL**.

El análisis busca:
* Medir la tasa de clics (CTR) y volumen de interacciones.
* Evaluar el volumen transaccionado por canal de difusión.
* Calcular el Retorno sobre la Inversión (**ROI Neto**) por campaña.
* Analizar la contribución de ingresos según el segmento de clientes (*Nuevos*, *Recurrentes*, *VIP*).

---

## 🗄️ Modelo de Datos
El modelo relacional está compuesto por 4 tablas optimizadas con índices:
1. `clientes`: Información demográfica y segmentación.
2. `campanas`: Presupuesto, canales y especificaciones técnicas.
3. `interacciones_campana`: Impresiones, clics, CPC y flags de conversión.
4. `conversiones`: Transacciones e ingresos monetarios confirmados.

## 📈 Consultas Analíticas (`queries_analytics.sql`)

El archivo `queries_analytics.sql` contiene los 5 casos de negocio clave diseñados para aprovechar la indexación del motor relacional:

### 1. Volumen de Clics por Campaña
* **Objetivo de negocio:** Identificar qué iniciativas publicitarias generan el mayor nivel de tracción de usuarios en la plataforma.
* **Lógica y Optimización:** Filtra eventos de tipo `'clic'` utilizando el índice compuesto `idx_interacciones_campana_tipo(campana_id, tipo_interaccion)` y contabiliza las interacciones por campaña.

### 2. Tasa de Clics (Click-Through Rate - CTR)
* **Objetivo de negocio:** Evaluar la efectividad del mensaje publicitario calculando la proporción de impresiones/envíos que efectivamente derivan en clics.
* **Lógica y Optimización:** Realiza una agregación condicional con `CASE WHEN` para dividir la suma de clics sobre el total de interacciones registradas, evitando divisiones por cero mediante la función `NULLIF`.

### 3. Rendimiento por Canal Publicitario
* **Objetivo de negocio:** Determinar qué canal de difusión (Google Ads, Redes Sociales, Email, SMS, Influencers) aporta mayor volumen de conversiones y venta monetaria total.
* **Lógica y Optimización:** Unifica `campanas` y `conversiones` utilizando la llave foránea indexada `idx_conversiones_campana` para agregar ventas globales agrupadas por canal.

### 4. Ingresos por Segmento de Cliente
* **Objetivo de negocio:** Identificar qué tipo de cliente (*Nuevo*, *Recurrente* o *VIP*) aporta el mayor valor comercial y ticket promedio.
* **Lógica y Optimización:** Agrupa las conversiones según la segmentación de la tabla `clientes`, apoyándose en el índice `idx_clientes_segmento` para evitar escaneos completos (*Full Table Scan*).

### 5. Retorno sobre la Inversión (ROI) Neto por Campaña
* **Objetivo de negocio:** Auditar la rentabilidad financiera neta descontando el presupuesto asignado de los ingresos reales acumulados.
$$\text{ROI Neto} = \sum (\text{monto\_ingreso}) - \text{presupuesto}$$
* **Lógica y Optimización:** Calcula la diferencia absoluta monetaria y el porcentaje de rentabilidad sobre la inversión utilizando `LEFT JOIN` para incluir campañas sin conversiones y `COALESCE` para manejar valores nulos.

---

---

## 🚀 Cómo Ejecutar el Proyecto
1. Clonar el repositorio:
   ```bash
   git clone [https://github.com/TU-USUARIO/marketing-analytics-sql.git](https://github.com/TU-USUARIO/marketing-analytics-sql.git)
Crear la base de datos en MySQL Workbench o tu gestor favorito:

```SQL
CREATE DATABASE marketing_analytics_db;
USE marketing_analytics_db;
```
2. Importar o ejecutar los scripts de las tablas y datos correspondientes:

marketing_analytics_db_campanas.sql

marketing_analytics_db_clientes.sql

marketing_analytics_db_conversiones.sql

marketing_analytics_db_interacciones_campana.sql

Ejecutar las consultas analíticas sobre el modelo para extraer los insights de negocio.

