# Time Series

Time series data is extremely common amongst different fields.

<hr><hr>


##  Line Plots (connected scatter plots)

The baseline to which all other plots are compared to. This kind of graphic has the advantage of being easily interpretable by most audiences, and requires little explanation. By using thicknesses, and color palettes, we can differentiate traces and emphasize the most relevant information. In [exercise 1](#exercise01) we will see how changing these variables can help us transmit large amounts of information in a meaningful way.

<br>
<img src="../media/traces02.png" width="100%">

<hr>


##  Stream Chart (stacked area)

<img src="../media/flow.jpg" width="100%">

<hr>


##  Dygraph

<hr>


##  Heatmap

<img src="../media/flow3.png" width="100%">


<hr>

# Exercises

##  <a name="exercise01">[1) Stochastic Traces (Mathematica)](https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/TimeSeries)</a>

In this exercise, we will use the data from a stochastic simulation of three mosquito genotypes interactions in a spatial landscape. Starting from datasets containing 50 repetitions of a stochastic experiment, we will create the following plot that allows the visualization of hundreds of traces, along with their mean in an easy to read format.

<br>
<center>
  <a href="https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/TimeSeries">
    <img src="../media/traces.png" width="100%"></center>
  </a>
</center>
<br>


##  [2) Stacked Area (R, Python)](https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/StackedArea)

In this exercise, we will use the aggregated data from a deterministic simulation of three mosquito genotypes interactions in a spatial landscape. We will generate the stacked area chart of the information in _plotly_ to create an interactive version of the dataset.

<br>
<center>
  <a href="https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/StackedArea">
    <img src="../media/stackedExercise.png" width="100%"></center>
  </a>
</center>
<br>


##  [3) Dygraph (R)](https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/Dygraph)

This exercise shows how to create a "dygraph" for time series data with R.

<br>
<center>
  <a href="https://github.com/Chipdelmal/dataViz_CADi/tree/master/Day01/scripts/Dygraph">
    <img src="../media/dygraph.png" width="100%"></center>
  </a>
</center>
<br>

<hr><hr>

# Extensions and Gallery

## Dissecting a mosquito life history

<img src="../media/F_mosy74_2858.png" width="50%"><img src="../media/F_mosy65_2770.png" width="50%"><br><br><br>



## Displaying spatio-temporal processes in a landscape

<img src="../media/heatmapExt01.jpg" width="100%"><br><br><br>

## Using Color Transparency to show spatio-temporal processes in a single plot

<img src="../media/heatmapExt02.png" width="100%"><br><br><br>




<iframe scrolling="no" src="https://plot.ly/~chipdelmal/0.embed?height=1000" width="100%""></iframe>
