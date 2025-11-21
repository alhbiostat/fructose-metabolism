#!/bin/bash

# Purpose: extract rare variants within the boundaries of target fructose metabolism genes from UKBiobank exome data

# This script interacts with the UK Biobank Research Analysis Platform (RAP) via the command line
# using dx-toolkit. To access UKB RAP data and software you must first be logged into the platform
# with <dx-login> and have selected the appropriate project with <dx-select>

# Run:
# run using: ./001_pullvariantsingene.sh

# Inputs:
# Gene name
# Gene chromosome and position (start and stop)

# Steps
# 1. Copy required chromosome PLINK files to instance
# 2. Filter to rare variants in gene of interest
# 3. Save filtered .bim file

# Output:
# e.g: ukb_WES_KHK_variants.bim

# ======================================================== #

source config.sh

genename="KHK"
chromosome=2
start=27086772
stop=27100762

run_pullvariants="
    # Filter to variants in gene and save variant list
    plink --bfile ukb23158_c${chromosome}_b0_v1 \
    --max-maf 0.01 \
    --mac 10 \
    --chr ${chromosome} \
    --from-bp ${start} \
    --to-bp ${stop} \
    --make-just-bim \
    --out ukb_WES_${genename}_variants
"

dx run swiss-army-knife \
-iin="${exome_dir}/ukb23158_c${chromosome}_b0_v1.bed" \
-iin="${exome_dir}/ukb23158_c${chromosome}_b0_v1.bim" \
-iin="${exome_dir}/ukb23158_c${chromosome}_b0_v1.fam" \
-icmd="${run_pullvariants}" \
--tag="Pull ${genename} variants" \
--instance-type="mem2_ssd2_v2_x8" \
--destination="${project}:${out_dir}/Ewelina/" \
--brief --yes

