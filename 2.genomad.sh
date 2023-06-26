#!/bin/bash -   
#title          :geNomad.sh
#description    :A tool that identifies virus and plasmid genomes from nucleotide sequences. It provides state-of-the-art classification performance and can be used to quickly find mobile genetic elements from genomes, metagenomes, or metatranscriptomes.
#author         :Julius Nweze
#date           :20230501
#version        :Referenced from within https://portal.nersc.gov/genomad/quickstart.html  https://github.com/apcamargo/genomad
#usage          :Run the command
#===========================================================================================================

# Activate geNomad within the conda environment
    conda activate genomad

# You can use any FASTA file containing nucleotide sequences as input. Execute the following command:
    genomad end-to-end --cleanup --splits 8 Epi_final-viral-combined_MG.fa.gz Epi_MG_genomad_output ~/geNomad_Database/genomad_db


# To do only taxonomic annoatation of identified viruses, run:
    genomad annotate --cleanup Epi_MG_True_virus.fasta Epi_MG_genomad_output ~/geNomad_Database/genomad_db
