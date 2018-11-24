# Data Visualization Primer

<center><i>Good data visualization is time consuming.</i></center>

<hr>

## Why?

* To raise interest
* To understand data
* To communicate

<hr>

## How?

There are several visual cues that help viewers interpret data. The most common ones are:

* __Position:__ The coordinates of data points are usually related to the independent variables shown in the plots axes.
* __Length:__ One of the easiest cues to decode, length is usually interpreted as _magnitude_.
* __Direction:__ When used in time series,
* __Angle:__ Generally mapped to rate of change in vector representations.
* __Shape:__ Can be effectively used to differentiate between categorical datasets, or to emphasize data points.
* __Area:__ Used to encode magnitde, this variable can be an effective, albeit tricky, method to show an extra dimension of our data in a two-dimensional setting.
* __Volume:__ Although it is hard to use effectively, it can be used in analogous ways to area.
* __Color:__
  * __Hue:__ When used correctly in a [color palette](./colors.md), it can be a very effective way to transmit either magnitude, or difference between datasets.
  * __Saturation/Transparency:__ The density of the color can be mapped to the magnitude of the dependent variable.

<br>
<a href="https://www.amazon.com/Data-Points-Visualization-Means-Something/dp/111846219X/ref=sr_1_2?ie=UTF8&qid=1542581424&sr=8-2&keywords=nathan+yau"><img src="../media/visualCues.png" width="35%"></a>
<br>

<hr>

## Telling a Story

Data visualization is, ultimately, a tool to aid our narratives. Wether it is a scientific paper, a lecture, a talk, or an internal report; there is always an audience we want to convince, and a story we want to tell.

<img src="../media/poster.jpg" width="100%">

<hr>

## Constraints

There's always tradeoffs we have to take into account when generating graphics for scientific/engineering contexts, and depending on our application we should be able to weight which elements are more important for our specific purposes.

###  Utility VS Attractiveness

Increasing the level of abstraction usually tends to improve the aesthetics of visualization. This can be achieved by removing labels, and elements that might interfere with the graphics, but it comes at the cost of information.

<img src="../media/aggregation02.png" width="50%">

###  Exploration VS Communication

Whilst it is often a good practice to make our visualizations as clean, and  "publication-ready" as possible.

<img src="../media/exploration.png" width="50%">

### Exploration VS Analysis

###  Static VS Dynamic

###  Print VS Digital

Although it is less often though about, there are still some constraints in the print media that make it

<img src="../media/flow3.png" width="50%">

### File Size VS Quality

This will become more apparent when we look into image formats

### Time

<hr>

## Steps

### 1) Explore the data
