#!/bin/bash -   
#title          :CRISPRCasTyper.sh
#description    :Detect CRISPR-Cas genes and arrays, and predict the subtype based on both Cas genes and CRISPR repeat sequence
#author         :Julius Nweze
#date           :20230512
#version        :Referenced from within https://github.com/Russel88/CRISPRCasTyper#plot
#usage          :Run the command
#===========================================================================================================

# CRISPRCasTyper takes as input a nucleotide fasta, and produces outputs with CRISPR-Cas predictions
# For metagenome assemblies and short contigs/plasmids/phages, change the prodigal mode. The default prodigal mode expects the input to be a single draft or complete genome
# Read for types of CRISPR-Cas systems https://www.synthego.com/blog/crispr-systems https://novateinbio.com/content/96-crispr-explained https://innovativegenomics.org/crisprpedia/crispr-in-nature/


# Activate cctyper within the conda environment
    conda activate cctyper

# For metagenome assemblies and short contigs/plasmids/phages, change the prodigal mode

    cctyper ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/CONTIGS/Vitamins_MG_MT/Epi/MG/Database/Backup/Epi_contigs.fasta Epi_contigs_MG_output --prodigal meta
