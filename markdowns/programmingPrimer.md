# Programming Primer

As mentioned before, this course is not aimed at

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
readData = read.csv2(paste0(path,"deterministicData.csv"), sep=",", header=FALSE, dec=".")
```

<hr>

## Extracting Rows and Columns from Data Structure

###  Mathematica

### Python

### R

<hr>

## Saving Data

###  Mathematica

### Python

### R

<hr>

## Saving Media

###  Mathematica

```Mathematica
Export["filename.extension", plotVariableName, ImageResolution->resolution, ImageSize->size]
```

### Python

### R
