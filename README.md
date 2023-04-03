# Gu-omics Lab
![Double Spring](https://chinesenewyear.imgix.net/assets/images/zodiac/chinese-zodiac-rabbit.png?fit=crop&q=50&w=2216&h=448&auto=format)

## [ClusterSetup](./ClusterSetUp)

To help automate spectral processing in Gu Lab

## Use Jupyter-lab in Gu Lab Computer
- type ```Anaconda Powershell Prompt``` in windows search bar
- change directory 
```
cd C:\Users\April's Lab\GitHub
```
- open jupyter-lab
```
jupyter-lab
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
- Once you entered the Jupyter-Lab kernel page, you would click to enter ```RamanomeSpec/example```
- Open ```Basic_Workflow.ipynb```
- By click :arrow_forward: to run each section
- Revise the input path and output path as the tutorial guides in the jupyterbook
