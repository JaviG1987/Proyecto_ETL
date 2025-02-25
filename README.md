# Proyecto ETL de Reservas de Hoteles en Madrid

## Descripción

    Este proyecto consiste en la implementación de un proceso ETL (Extract, Transform, Load) para analizar y almacenar información sobre reservas de hoteles en Madrid. El proyecto incluye:

## Extracción de datos:

    Importación de un archivo CSV con las reservas de clientes en hoteles de Madrid.

    Web scraping de una página de hoteles de la competencia para obtener los 10 hoteles principales y sus precios por noche.

    Consulta a una API de eventos de la ciudad de Madrid para extraer los eventos que ocurren entre las fechas de las reservas.

## Transformación de datos:

    Limpieza y normalización de los datos extraídos.

    Cruce de información entre reservas, eventos y hoteles de la competencia.

## Carga de datos:

    Inserción de los datos transformados en una base de datos SQL estructurada con las siguientes tablas:

    ciudad

    eventos

    hoteles

    clientes

    reservas

## Tecnologías Utilizadas

    Python (para la implementación del ETL)

    Pandas (procesamiento de datos)

    BeautifulSoup / Scrapy (web scraping)

    Requests (consumo de API de eventos)

    SQL (PostgreSQL / MySQL / SQLite) (almacenamiento de datos)

    psycopg2 (conexión con PostgreSQL)

    datetime (manejo de fechas)

    numpy (operaciones numéricas y manipulación de datos)

    selenium (automatización de navegadores para web scraping)

    time (manejo de temporizadores y retardos)

## Instalación

    Crear el repositorio:

    https://github.com/JaviG1987/Proyecto_ETL

### Crear un entorno virtual y activarlo:

    python -m venv venv
    source venv/bin/activate  # En Windows: venv\Scripts\activate

    Instalar las dependencias:

    pip install -r requirements.txt

# USO

### Configurar la base de datos:

    Editar el archivo config.py con las credenciales de la base de datos.

### Ejecutar el proceso ETL:

    analisis_limpio_inicial.ipynb    
    api.ipynb
    scrapeo.ipynb
    carga_ddbb.ipynb

## Estructura del Proyecto

    ├── jupyters/                # Notebooks de Jupyter
        ├── analisis_limpio_inicial.ipynb
        ├── analisis_pruebas_inicial.ipynb
        ├── api.ipynb
        ├── carga_ddbb.ipynb
        ├── ddbb_pruebas.ipynb
        ├── scrapeo.ipynb
    ├── data/
        ├── api_eventos.parquet
        ├── ciudad.parquet
        ├── clientes.parquet
        ├── dataset_hoteles_limpio.parquet
        ├── hoteles.parquet
        ├── reservas_hoteles.parquet
        ├── scrapeo_hoteles.parquet
    ├── src/                 # Scripts (.py)
        ├──
    ├── README.md            # Descripción del proyecto
    ├── .gitignore           # Archivo para no subir todo a github
    ├── requirements.txt     # Recap de instalaciones y version 
    ├── .venv                # Carpeta del entorno virtual del proyecto

## Next Steps

    Control de errores
    Parametrizar todo con funciones
    Crear el .py
    Crear el src

## Contacto

    Para cualquier consulta o mejora, puedes contactarme en JaviG1987.

