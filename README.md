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

