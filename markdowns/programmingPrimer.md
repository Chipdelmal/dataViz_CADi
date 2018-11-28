# Programming Primer

As mentioned before, this course is not aimed towards being a thorough course on programming languages. We will be using the three languages for some examples, however. As such, a basic knowledge of the commands will come in handy to be able to follow the exercises.

<hr>

## Setup & Prerequisites

### Mathematica

To have the [version 10](http://www.wolfram.com/mathematica/) or above installed and running is enough.

### Python and R

Installing [Python version 3.7](https://www.python.org/) with [anaconda](https://www.anaconda.com/download/), and [R 3.5.1](https://www.r-project.org/) (with [RStudio](https://www.rstudio.com/)). Additionally, most of the examples and exercises will be shown running in [atom](https://atom.io/) (follow [this guide](https://jstaf.github.io/2018/03/25/atom-ide.html) to setup the [Hydrogen](https://atom.io/packages/hydrogen) kernels to run the packages from within the IDE).

<hr>

## Installing Libraries

### Mathematica

```Mathematica
(* Moving the library.m file to the folder: /Users/User/Library/Mathematica/Applications/ *)
```

### Python

Note: to install the anaconda image, follow the instructions on this [README](../conda/README.md) file.

```Bash
# Using anaconda on terminal
source activate dataViz
pip install packageName
conda install packageName
```

### R

```R
install.packages(libraryName)
```

<hr>

## Loading Libraries

### Mathematica

```Mathematica
<<LibraryName`
```

### Python

```Python
import LibraryName
import LibraryName as Shorthand
```

### R

```R
library("LibraryName")
```


<hr>

## Loading Data

### Mathematica

```Mathematica
SetDirectory[NotebookDirectory[]]
rawData=Import["filename.csv"]
```

### Python

```Python
import numpy as np
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

## Extracting Rows and Columns from a Data Structure

###  Mathematica

This [quick reference](https://reference.wolfram.com/language/howto/GetPartsOfAMatrix.html) shows the ways to access elements in a matrix form.

### Python

Please follow this [guide](https://jakevdp.github.io/PythonDataScienceHandbook/02.02-the-basics-of-numpy-arrays.html) for a quick rundown on the most common ways to access elements in arrays.

### R

For dataframe manipulation please refer to this [guide](https://www.datamentor.io/r-programming/data-frame/). In the case of vectors, please follow this [rundown](https://www.datamentor.io/r-programming/vector/).

<hr>

## Saving Data

### Mathematica

```Mathematica
Export["filename.csv",data]
```

### Python

```Python
# Through Numpy
np.savetxt("foo.csv", a, delimiter=",")
```

### R

```R
write.csv(data, file = "filename.csv",row.names=FALSE)
```

<hr>

##  Saving Media

### Mathematica

```Mathematica
Export["filename.extension", plotVariableName, ImageResolution->resolution, ImageSize->size]
```

### Python

```Python
import plotly
import plotly.io as pio

# Static Media
pio.write_image(figure, 'filename.png')


# HTML
plotly.offline.plot(figure, filename='alleleFrequencyPython.html')
```

### R

```R
library(htmlwidgets)

# Static Media
pdf("filename.extension", width = 4, height = 4)
plotRoutine()
dev.off()

# HTML
htmlwidgets::saveWidget(media, "filename.html")
```
