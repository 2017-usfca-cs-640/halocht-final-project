export PATH=$PATH:/Users/HansLocht/Desktop/halocht-final_project-thanatomicrobiome/packages/sratoolkit.2.8.2-1-mac64/bin

#!bin/bash
# Alfredo H. Locht
# 22Nov2017

# This is a script to download all of the fastq files and dump them into the
# data/raw_data directory

# The pipe and tail -n +2 is a handy way to exclude the first line
for SRA_number in $(cut -f 6 data/metadata/Thanatomicrobiome_SraRunTable.txt | tail -n +2)
do
    fastq-dump -v $SRA_number -O data/raw_data
done

echo "Done downloading fastq files into data/raw_data"

echo "#####################################################"
