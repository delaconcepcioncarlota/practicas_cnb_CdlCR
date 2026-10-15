# Prácticas del Máster de Bioinformática y Biología Computacional de la Universidad Autónoma de Madrid

Quarto reports (HTML/PDF) documenting the analyses run with the NADIA package during the CNB internship.

## Contenido

```
[!TIP]
FinalReports/   Informes finales renderizados (HTML)
Docs/           Archivos fuente de los informes
├── Analysis_SpikeIn    Archivos .qmd generados durante el análisis de los datos generados para el estudio
├── Analysis_MTA/       Archivos .qmd generados durante el análisis de los datos con tratamiento de MTA
└── pics/
    ├── finalFigures/         Figuras finales generadas para la memoria
         ├── MTA_finalFigures/      Figuras finales asociadas al análisis de datos con tratamiento de MTA
         └── SpikeIn_finalFigures/  Figuras finales asociadas al análisis de datos generados para el estudio
    ├── intermediateFigures/  Figuras intermedias llamadas en los .qmd
         ├── MTA_intermediateFigures/      Figuras intermedias asociadas al análisis de datos con tratamiento de MTA
         └── SpikeIn_intermediateFigures/  Figuras intermedias asociadas al análisis de datos generados para el estudio
    └── MP_panels.pptx        PPTX donde se montan los paneles
```

## Contexto

Prácticas realizadas en el [Centro Nacional de Biotecnología (CNB-CSIC)](https://www.cnb.csic.es/) durante los meses de septiembre y octubre, bajo la supervisión de Fernando Corrales y Sergio Ciordia. El objetivo fue aprender a utilizar el paquete en desarrollo NADIA así como entender la importancia y el efecto de las diferentes normalizaciones y los diferentes métodos de imputación de los diferentes valores ausentes.

## Requisitos

- [Quarto](https://quarto.org/)[versión]
- R >= [4.6.1] con el paquete NADIA (https://github.com/sciordia/NADIA.git)

## Workflow

![**Workflow for proteomics data analysis using the NADIA package.** Steps carried out with commercial software are shown in green. The processing steps performed using the NADIA package are represented in blue. At the bottom of each step, the function through which results were obtained for that procedure is indicated.](C:\Users\Proteomica\Desktop\TFM Carlota\practicas_cnb_CdlCR\Docs\pics\finalFigures\ProteomicsWNADIA_ss.png){#fig-workflow}

## Informes

| Informe | Descripción |
|---|---|
| [Benchmarking_SpikeInProteins.html](FinalReports/Benchmarking_SpikeInProteins.html) | Análisis de datos generados en el laboratorio con el objetivo de evaluar la capacidad de la herramienta |
| [MTA_data_report_cycloess.html](FinalReports/MTA_data_report_cycloess.html) | Análísis de datos experimentales sin referencia haciendo uso de la normalización *cycloess* |
| [MTA_data_report_vsn.html](FinalReports/MTA_data_report_vsn.html) | Análísis de datos experimentales sin referencia haciendo uso de la normalización *vsn* |

## Autoría

Carlota de la Concepción Ruiz - delaconcepcion.carlota

## Dirección

- Fernando Corrales
- [Sergio Ciordia](https://github.com/sciordia)

