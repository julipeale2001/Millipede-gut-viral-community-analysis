#!/bin/bash -   
#title          :VirSorter2.sh
#description    :A multi-classifier, expert-guided approach to detect diverse DNA and RNA virus genomes
#author         :Julius Nweze
#date           :20230429
#version        :Referenced from within https://bitbucket.org/MAVERICLab/virsorter2/src/master/ https://www.protocols.io/view/getting-started-with-virsorter2-rm7vz8rm5vx1/v2
#usage          :Run the command
#===========================================================================================================

# Work with more viral groups including dsDNA phages, ssDNA viruses, RNA viruses, NCLDV (Nucleocytoviricota), lavidaviridae (virophages); apply machine learning to estimate viralness using genomic features including structural/functional/taxonomic annotation and viral hallmark genes; train with high quality virus genomes from metagenomes or other sources.

# Activate VirSorter2 within the conda environment
    conda activate vs2

# run classification with 10 threads (-j) and test-out as output diretory (-w). **--include-groups "dsDNAphage,ssDNA,NCLDV,lavidaviridae"**
    virsorter run -w Epi_MG_test.out -i ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/CONTIGS/Vitamins_MG_MT/Epi/MG/Database/Backup/Epi_contigs.fasta --min-length 1000 -j 10 all
