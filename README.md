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

### 3. Pasos para Subir el Proyecto a GitHub (Terminal)

#### Paso 1: Crear el repositorio en la web de GitHub
1. Ingresá a [GitHub](https://github.com) e inicia sesión.
2. Hacé clic en **"New"** (nuevo repositorio).
3. Nombre del repositorio: `marketing-analytics-sql`.
4. Dejalo en modo **Public** (Público) para que sea visible en tu portafolio.
5. **No** selecciones "Initialize with README" (lo crearemos desde la terminal).
6. Hacé clic en **"Create repository"**.

#### Paso 2: Inicializar y subir desde la terminal local
Abrí la terminal o consola en la carpeta donde tenés los archivos (`.sql` y `README.md`) y ejecutá:

```bash

# 1. Inicializar el repositorio Git local
git init

# 2. Agregar todos los archivos al área de preparación (staging)
git add .

# 3. Realizar el primer commit
git commit -m "feat: proyecto inicial de marketing analytics con schema, data y queries SQL"

# 4. Cambiar el nombre de la rama principal a main
git branch -M main

# 5. Vincular tu repositorio local con GitHub (reemplazá TU-USUARIO por tu usuario real)
git remote add origin https://github.com/TU-USUARIO/marketing-analytics-sql.git

# 6. Subir el código a GitHub
git push -u origin main
