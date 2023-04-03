# New Cluster Account Environment Setup
```
vim .ssh/config # same public-private key but change the user and host name for this case
```

- structure
  - opt: software
  - scratch: temporary
    - BUILD: download or compile software, to temporarily save
  ```
  ln -s scratch /scratch/@user-name/
  ```
- Python virtual env

- Bioinformatics tool installation (installed method ranked by decreasing priority)
  - Binary
  - Source code w/ compile
  
## Bioinformatics tools list
- Samtools: It is used for manipulating and processing sequence alignment data in the SAM (Sequence Alignment/Map) and BAM (Binary Alignment/Map) formats.
- Bowtie: It is used for aligning short DNA sequences (reads) to a large reference genome.
- Bedtools: It is used for genome arithmetic and working with genomic intervals, such as finding overlaps between genomic regions, merging and sorting intervals, and extracting sequence from specific regions of interest.
- CD-HIT: It is a program for clustering and comparing protein or nucleotide sequences.
- Barrnap: It is a tool for detecting ribosomal RNA genes in genomes.
- Mothur: It is a software package for analyzing 16S rRNA gene sequences for microbial ecology studies.
- Kaiju: It is used for taxonomic classification of metagenomic sequences.
- Kofamscan: It is a tool for functional annotation and classification of protein sequences against the KEGG Orthology database.
- Muscle: It is a tool for multiple sequence alignment of nucleotide or amino acid sequences.
- Concoct: It is used for clustering metagenomic contigs (long contiguous sequences) into genome bins.
- Metabat: It is a tool for binning metagenomic contigs into genome bins.
- Prodigal: It is used for gene prediction (i.e., finding protein-coding genes) in microbial genomes.
- Spades: It is a genome assembly tool that can assemble both single-end and paired-end reads.
- Prokka: It is a tool for annotating bacterial and archaeal genomes.
- FastTree: It is a tool for inferring maximum-likelihood phylogenetic trees from nucleotide or amino acid sequences.
- ETE3: It is a Python package for building, visualizing, and analyzing phylogenetic trees and networks.
- QT: It is a graphical user interface (GUI) toolkit for building software applications with a graphical interface.
- RAxML-NG: It is a tool for maximum-likelihood phylogenetic inference from nucleotide or amino acid sequence data.
- Pplacer: It is a tool for placing query sequences on a fixed reference phylogenetic tree.
- Diamond: It is a tool for aligning protein sequences to a large reference database.
- HMMER: It is a tool for searching sequence databases for homologous protein sequences using profile hidden Markov models.
- Kraken: It is a tool for taxonomic classification of metagenomic reads.
- Sickle: It is a tool for trimming and filtering low-quality reads from Illumina sequencing data.

### Samtools
- [Htscodecs](https://github.com/samtools/htscodecs): htslib suite
  - install latest release
  ```
  wget htscodecs-1.4.0.tar.gz
  tar
  cd htscodecs-1.4.0/
  ll # compile needed if you see configure, Makefile.*, ...
  mkdir build | cd build
  # make a file to compile and install
  vim ../custom.sh # vim .bashrc; check template in ./
  # tell the software to use the specified version of gcc C compiler in the custom.sh file
  # include header file
  # lib so file
  bash ../custom.sh # successful if you see no error and Make file in
  make -j4 # 4 clusters
  make check -j4 # this is a test case either check or test
  make install  # installation
  ll ~/opt/$softwarename # check installation dir
  # save config file
  mkdir ~/opt/htslib/1.17/configure # to save some config file in the installed software environment
  cp ./config.* ~/opt/htslib/1.17/configure/ # copy onfig.* and this custom.sh file to above location
  cp ../custom.sh ~/opt/htslib/1.17/configure/ # copy onfig.* and this custom.sh file to above location
  ``` 
- [Htslib](https://github.com/samtools/htslib): dependent on htscodecs
  ```
  # edit the custom.sh file; the \$\$ORIGIN is because we call bash and then make so it requires 2 \$
  CC="$gcc_prefix/bin/gcc" \
  CFLAGS="-I$inst_inc" \
  LDFLAGS="-L$gcc_lib -L$inst_lib -Wl,-z,origin,-rpath,'\$\$ORIGIN'/../lib,-rpath,$gcc_lib" \ 
  ./configure \                                                                                                                   
    --prefix="$inst_prefix" \
    --with-external-htscodecs
    
  # bash ../custom.sh
  make -j4
  LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/opt/htslib/1.17/lib" make check -j4
  make install 
  
  ldd ~/opt/htslib/1.17/lib/libhts.so # check link; error might be originated from 
  # if you wanna re-compile 
  make clean
  ```
  
- [Samtools](https://github.com/samtools/samtools)

  
