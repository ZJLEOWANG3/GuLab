# GuLab
To help automate spectral processing in Gu Lab

## Use Jupyter-lab in Gu Lab Computer
- type ```Anaconda Prompt``` in windows search bar
- change directory 
```
cd C:\Users\April's Lab\scripts
```
- open jupyter-lab
```
jupyter-lab
```
## Common command for Raman data processing using Pandas
```
import pandas as pd # module to read and process table
df = pd.read_csv(path,index_col=0) # to read the csv dataframe saved by below command
df.to_csv(path) # to save dataframe, it will save the index
X.index = Y.index # assign index of Y to X
df = pd.concat([X,Y],axis=1) # concatenate 2 dataframe along either row (axis=0) or column; need to make sure they have same index or column name
```
## [Refer to this if you are interested in markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## Data Structure
- For a 2 layers profile
```
# Eggmato is the project name
# EE, ET, TE, TT are 4 treatment groups for the project
tree ./Eggmato 
.
├── EE
│   └── EE.txt
├── ET
│   └── ET.txt
├── TE
│   └── TE.txt
└── TT
    └── TT.txt
```
- For a 3 layers profile
```
# JRTP Raman txt are the project name
# IFAS1_Endo, IFAS1_Gly, ... are the treatment groups for the project
# T1, T2, T3, T4, ... are the time points for each of the treatment groups
# Drop1_01.txt, ... are replicates for each time point within each of the treatment group
└── JRTP Raman txt
    ├── IFAS1_Endo
    │   ├── T1
    │   │   ├── Drop1_01.txt
    │   │   ├── Drop1_02.txt
    │   │   ├── Drop1_03.txt
    │   │   ├── Drop2_01.txt
    │   │   └── Drop3_01.txt
    │   ├── T2
    │   │   ├── Drop1_01.txt
    │   │   └── Drop1_02.txt
    │   ├── T3
    │   │   ├── Drop1_01.txt
    │   │   ├── Drop2_01.txt
    │   │   └── Drop2_02.txt
    │   └── T4
    │       ├── Drop1_01.txt
    │       ├── Drop2_01.txt
    │       └── Drop3_01.txt
    ├── IFAS1_Gly
    │   ├── T1
    │   │   ├── Drop1-3_01.txt
    │   │   ├── Drop1_01.txt
    │   │   ├── Drop2-1_01.txt
    │   │   ├── Drop2-2_01.txt
    │   │   ├── Drop2-3_01.txt
    │   │   └── Drop3-1_01.txt
    │   ├── T2
    │   │   ├── Drop1_01.txt
    │   │   ├── Drop2_01.txt
    │   │   ├── Drop3-2_01.txt
    │   │   └── Drop3_01.txt
    │   └── T3
    │       ├── Drop1-2_01.txt
    │       ├── Drop1_01.txt
    │       ├── Drop2_01.txt
    │       ├── Drop3-2_01.txt
    │       └── Drop3_01.txt
    ....
```
## Basic Usage to process data
### Preprocessing
```
# input path to the directory containing txt files
# BG is how many backgrounds within each of the spectra txt files, by default is 10
# it would automatically read profile, remove burnt cells, smooth, baseline correction, etc.
python preprocess.py --BG 10 $PATH2txtdir
```
### Get Peak Information
- Using molecular dictionary to identify known molecules
```
python getpeak.py
```
- Non-targeted peak identification

### Get Heatmaps

## For Sorting system, just to identify what is PAO
- Log in jupyter-lab
    - Use the code in Raman_PAO.ipynb


