# fructose-metabolism

**Project:** Investigating the impact of fructose on colorectal cancer

**Technical aim:** assess the impact of rare variants in fructose metabolism genes on fructose metabolism/uptake (through identifying proxy phenotypes of this), and downstream health risks, using genetic epidemiology/Mendelian Randomisation (MR) approaches

**Genes of interest (GOIs):** *KHK, ALDOB, SLC2A5*

**STEPS:** 
  1. Extract all rare variants (<1% MAF, >10 MAC) identified in GOIs in the UK Biobank
  2.  Annotate the functional consequences of these variants using VEP
  3. Extract selected variants from published Genebass results (for ~4,500 phenotypes; https://app.genebass.org/) and AzPhewas portal UKB-PPP proteomic data (~3,000 proteins; https://azphewas.com/) 
  4. Conduct a pheWAS for other traits of interest (e.g. metabolite levels, dietary traits) 
  5. From 3. and 4. establish the "phenotypic profile" of variants in these genes and identify relevant proxy traits for fructose uptake/metabolism that can be used in a pathway informed MR framework (Rare and common variant MR of fructose uptake/metabolism --> colorectal cancer risk)
