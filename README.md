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

