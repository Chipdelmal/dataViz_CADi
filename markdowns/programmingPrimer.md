# Programming Primer

<hr>

## Loading Data

### Mathematica

```Mathematica
SetDirectory[NotebookDirectory[]]
rawData=Import["filename.csv"]
```

### Python

```Python
# Through numpy
path = "/DIRECTORY/"
rawData = np.genfromtxt(path + 'filename.csv', delimiter=',')
```
### R

```R
path = "/DIRECTORY/"
setwd(path)
readData = read.csv2(paste0(path,"deterministicData.csv"),sep=",",header=FALSE,dec=".")
```

<hr>
