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
  
## Bioinformatics tools

- [Htscodecs](https://github.com/samtools/htscodecs): htslib suite
  - latest release, wget htscodecs-1.4.0.tar.gz
  ```
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
  ``` 
