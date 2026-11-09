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
Ejecutar schema.sql en MySQL para crear las tablas e índices.

Ejecutar data.sql para cargar los datos sintéticos de prueba.

Correr las consultas de queries_analytics.sql para obtener los insights analíticos.

---

