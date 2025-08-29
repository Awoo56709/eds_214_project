---
editor_options: 
markdown: 
wrap: 72
---

# EDS 214 Project - Figure Reproduction

This repository is for the EDS 214 project to recreate figure 3 from Schaefer et al. 2000. This project will be open-ended in that scripts, assumptions and documentation will be created at an ongoing basis aiding in the recreation of the figure. Below is the image to be recreated:
 that functions, rendering
 
 
<img src="https://github.com/user-attachments/assets/ea634bda-fc23-4263-8b63-ce28e4c3ce61" alt="image" width="350" height="500"/>


## Purpose

-   The purpose of this project is to recreate the figure from the study and prove accessibility of reproducibility within a 20+ year old study given the data used, the tools such as RStudio and the various RStudio libraries.

## Contents

-   Contents within the repository will include the raw data in the data folder, functions, analysis scripts, supporting code, cleaned and formatted data and any visuals developed.

## Description

- The project will consist of folders: 
  - [Paper](https://github.com/Awoo56709/eds_214_project/tree/main/paper) - A folder containing any text files
  - [Figures](https://github.com/Awoo56709/eds_214_project/tree/main/Figures) - A folder containing any visuals and saved images 
  - [Data](https://github.com/Awoo56709/eds_214_project/tree/main/Data) - A folder containing only raw data 
  - [Scripts](https://github.com/Awoo56709/eds_214_project/tree/main/Scripts) - A folder containing only scripts for cleaning/data wrangling
  - [Outputs](https://github.com/Awoo56709/eds_214_project/tree/main/Outputs) - This will contain Quarto docs, supporting code for cleaned data, groupbys, renderings
  - [Old](https://github.com/Awoo56709/eds_214_project/tree/main/Old) - Contains sandboxes for exploratory data
  - [Scratch](https://github.com/Awoo56709/eds_214_project/tree/main/Scratch) - Includes sandboxes for data exploration and testing
  - [R](https://github.com/Awoo56709/eds_214_project/tree/main/R) - A folder to house functions

## Data Access Details

-   Data accessed was sourced at the EDI Data Portal. Specifically relating to the *"Chemistry of Stream Water from the Liquillo Mountains*. The data recorded weekly water samples and nutrient levels at the Luquillo Mountain before and after a hurricane - The data sets that were utilized were:
  - QuebradaCuenca-Bisley 1 CSV
  - QuebradaCuenca-Bisley 2 CSV
  - QuebradaCuenca-Bisley 3 CSV
  - Puente Roto Mameyes CSV
  
## Flowchart & Analysis

![](flowchart.png)
- Stored data will be exported to csv files
- The csv files will be read in to RStudio to view initial raw observations
- Functions and methods will be applied to clean and manipulate the data
- After data is cleaned, processes/methods will further be applied for verification and shaping/manipulation of data for analysis
- The manipulated observations are now prepared for visualization to create figures and conclusions of our data

## References

-   Data Source <https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-luq.20.4923064>

## References

- Schaefer, Doug & McDowell, William & Scatena, Frederick & Asbury, Clyde. (2000). *Effects of Hurricane Disturbance on Stream Water Concentrations and Fluxes in Eight Tropical Forest Watersheds of the Luquillo Experimental Forest, Puerto Rico*. Departmental Papers (EES). 16. 10.1017/S0266467400001358.

- McDowell, W. and International Institute of Tropical Forestry(IITF), USDA Forest Service.. 2024. Chemistry of stream water from the Luquillo Mountains ver 4923064. Environmental Data Initiative. <https://doi.org/10.6073/pasta/f31349bebdc304f758718f4798d25458> (Accessed 2025-08-25).
