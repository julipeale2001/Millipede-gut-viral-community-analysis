#!/bin/bash -   
#title          :iPHoP.sh
#description    :A bioinformatic tool for computational prediction of host taxonomy from phage genomes
#author         :Julius Nweze
#date           :20230509
#version        :Referenced from within https://bitbucket.org/srouxjgi/iphop/src/main/#markdown-header-adding-bacterial-andor-archaeal-mags-to-the-host-database-experimental
#usage          :Run the command
#===========================================================================================================

# Activate iphop_env within the conda environment
    conda activate iphop_env

# Predict the hosts based on the iphop provided databases
    iphop predict --fa_file Quality_vGenomes_MG.fasta --db_dir ~/iPHoP_db/Sept_2021_pub_rw/ --out_dir iphop_Epi_MG/

# Adding your bacterial and/or archaeal MAGs to the host database by following these 3 steps:
###### 1. Infers your bacterial and archaeal trees using the GTDB-Tk reference genomes.
    conda activate gtdbtk
    gtdbtk de_novo_wf --genome_dir MAGs/ --bacteria --outgroup_taxon p__Patescibacteria --out_dir MAGs_GTDB-tk_results/ --cpus 20 --force --extension fna
    gtdbtk de_novo_wf --genome_dir MAGs/ --archaea --outgroup_taxon p__Altiarchaeota --out_dir MAGs_GTDB-tk_results/ --cpus 20 --force --extension fna
##### 2. Next, a new iPHoP database must be created, which will include GTDB genomes and the additional MAGs provided by the user
    iphop add_to_db --fna_dir MAGs/ --gtdb_dir MAGs_GTDB-tk/ --out_dir ~/home/nweze/May_20223_hosts --db_dir ~/iPHoP_db/Sept_2021_pub_rw/

##### 3. Predict hosts with new database containing your MAGS
    iphop predict --fa_file Quality_vGenomes_MG.fasta --db_dir ~/home/nweze/May_20223_hosts --out_dir Quality_vGenomes_MG_iPHOP -t 10



