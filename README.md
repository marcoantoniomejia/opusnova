# Opusnova

Bienvenido al repositorio oficial del proyecto Opusnova. Esta es una aplicación web moderna diseñada para ser desplegada de forma nativa en la nube.

## Sobre Nosotros

Somos una empresa orgullosamente **Partner de Google Cloud**. Nuestra especialización es crear soluciones escalables, seguras y eficientes utilizando la tecnología de vanguardia de Google Cloud.

![Google Cloud Partner](https://cloud.google.com/partners/images/badges/google-cloud-partner-badge.svg)

## Despliegue en Google Cloud Run

Esta aplicación está contenerizada y optimizada para un despliegue rápido y eficiente en **Google Cloud Run**.

### Pasos para el despliegue

1.  **Autenticación (si es la primera vez):**
    ```bash
    gcloud auth login
    gcloud config set project TU_PROJECT_ID
    ```

2.  **Construir y subir la imagen del contenedor en un solo paso:**
    ```bash
    gcloud builds submit --tag gcr.io/TU_PROJECT_ID/opusnova
    ```

3.  **Desplegar la imagen en Cloud Run:**
    ```bash
    gcloud run deploy opusnova \
      --image gcr.io/TU_PROJECT_ID/opusnova \
      --platform managed \
      --region TU_REGION \
      --allow-unauthenticated
    ```

**Nota:** No olvides reemplazar `TU_PROJECT_ID` y `TU_REGION` con los valores correctos de tu proyecto y región en Google Cloud.
