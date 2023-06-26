#!/bin/bash -   
#title          :CheckV.sh
#description    : CheckV is a fully automated command-line pipeline for assessing the quality of single-contig viral genomes, including identification of host contamination for integrated proviruses, estimating completeness for genome fragments, and identification of closed genomes.
#author         :Julius Nweze
#date           :2023.05.10
#version        :https://bitbucket.org/berkeleylab/checkv/src/master/#markdown-header-installation
#usage          :Run the command
#==============================================================================================
# Based on the results of A-C, CheckV generates a report file and assigns query contigs to one of five quality tiers (consistent with and expand upon the MIUViG quality tiers):

#    Complete (see panel C)
#    High-quality (>90% completeness)
#    Medium-quality (50-90% completeness)
#    Low-quality (<50% completeness)
#    Undetermined quality

    export CHECKVDB=/path/to/checkv-db
# You'll need to update your environment or use the -d flag to specify the CHECKVDB location:
    checkv end_to_end Epi_MG_full_partial_virus.fasta output_Epi_MG-checkV -d /home/nweze/checkv-db-v1.5 -t 20 &&




# Split viral genomes
    awk '/^>/ {out = substr($1, 2) ".fna"; print > out} !/^>/ {print >> out}' Glo_MG_True_virus.fna  
