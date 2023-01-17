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

