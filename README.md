# 📊 Proyecto de Marketing Analytics: Análisis de Rendimiento de Campañas en SQL

## 🎯 Contexto y Objetivo
Proyecto de consultoría de datos orientado a evaluar el rendimiento comercial de campañas publicitarias mediante bases de datos relacionales en **MySQL**.

El análisis busca:
* Medir la tasa de clics (CTR) y volumen de interacciones.
* Evaluar el volumen transaccionado por canal de difusión.
* Calcular el Retorno sobre la Inversión (**ROI Neto**) por campaña.
* Analizar la contribución de ingresos según el segmento de clientes (*Nuevos*, *Recurrentes*, *VIP*).

---

## 🗄️ Modelo de Datos y Estructura del Repositorio
El proyecto está organizado en carpetas modulares para mantener una clara separación entre los scripts de base de datos y las consultas analíticas:

```text
marketing-analytics-sql/
│
├── database/                                          <-- Archivos DDL y DML de la base de datos
│   ├── marketing_analytics_db_campanas.sql            <-- Tabla campanas
│   ├── marketing_analytics_db_clientes.sql            <-- Tabla clientes
│   ├── marketing_analytics_db_conversiones.sql        <-- Tabla conversiones
│   └── marketing_analytics_db_interacciones_campana.sql <-- Tabla interacciones
│
├── queries_analytics.sql                              <-- Consultas analíticas de negocio
└── README.md                                          <-- Documentación principal
```
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
Ejecutar los scripts de la carpeta database/:
database/marketing_analytics_db_campanas.sql
database/marketing_analytics_db_clientes.sql
database/marketing_analytics_db_conversiones.sql
database/marketing_analytics_db_interacciones_campana.sql
Ejecutar el análisis:
Abrir y ejecutar el archivo queries_analytics.sql en tu gestor (MySQL Workbench / DBeaver) para extraer los reportes analíticos de negocio.


