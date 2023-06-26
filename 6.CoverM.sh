#!/bin/bash -   
#title          :CoverM.sh
#description    :A configurable, easy to use and fast DNA read coverage and relative abundance calculator focused on metagenomics applications.
#author         :Julius Nweze
#date           :2023.05.10
#version        :https://github.com/wwood/CoverM#usage
#usage          :Run the command
#==============================================================================================


# CoverM calculates coverage of genomes/MAGs coverm genome (help) or individual contigs coverm contig (help). Calculating coverage by read mapping, its input can either be BAM files sorted by reference, or raw reads and reference genomes in various formats.


# for viral genomes
 for i in *.fasta; do cp $i $i.fna; done
coverm genome --coupled ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE2/DE2_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE2/DE2_L1_2.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE3/DE3_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE3/DE3_L1_2.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE5/DE5_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DE5/DE5_L1_2.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE2/RE2_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE2/RE2_L1_2.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE3/RE3_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE3/RE3_L1_2.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE5/RE5_L1_1.fq.gz ~/proj/Millipedes2/Metagenome/Data/Julius/Data/X201SC21033030-Z02-F001/raw_data/DRE5/RE5_L1_2.fq.gz --genome-fasta-directory . --threads 20 -o Viral_genome_relative_abundance.CoverM.tsv
