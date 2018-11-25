# Data Visualization Primer

<center><i>Good data visualization is time consuming.</i></center>

<hr>

## Why?

* To raise interest
* To understand data
* To communicate

<hr>

## Telling a Story

Data visualization is, ultimately, a tool to aid our narratives. Wether it is a scientific paper, a lecture, a talk, or an internal report; there is always an audience we want to convince, and a story we want to tell.

<br>
<img src="../media/poster.jpg" width="100%">

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

## Constraints

There's always tradeoffs we have to take into account when generating graphics for scientific/engineering contexts, and depending on our application we should be able to weight which elements are more important for our specific purposes.

### Time


###  Utility VS Attractiveness

Increasing the level of abstraction usually tends to improve the aesthetics of visualization. This can be achieved by removing labels, and elements that might interfere with the graphics, but it comes at the cost of information.

<img src="../media/aggregation02.png" width="50%">

###  Exploration VS Communication

Whilst it is often a good practice to make our visualizations as clean, and  "publication-ready" as possible, preparing a good graphic is time consuming. If we are interested in exploration, we might not need to devote so much time into labeling axes correctly, or using the appropriate font-size unless it is making the exploration easier.

<img src="../media/exploration.png" width="50%">

### Exploration VS Analysis

This constraint is a bit less obvious than the exploration versus communication one, but it's still important to make the disctintion between plots made for the purpose of detecting large trends in a dataset (in an inital state of experimentation), and plots that are specifically designed for analysis of a clear phenomenon.

###  Static VS Dynamic

Dynamic contents have the advantage of being manipulable and interactive, which often results in better exploratory understanding of a concept. This, however, comes at the cost of media compatibility, and sometimes in a reduction of graphics quality.

###  Print VS Digital

Although it is less often though about, there are still some constraints in the print media that are worth considering. There is still a sector of the population that prefers to read papers in a printed format, so the font-sizes, colors, and shapes should ideally be readable even in lower resolutions.

<img src="../media/flow3.png" width="50%">

### File Size VS Quality

This will become more apparent when we look into image formats that

<hr>

## Steps

1) Explore the data
2) Draft some ideas
3) Select plot type
4) Generate initial draft
5) Improve aesthetics and communicability
6) Iterate as necessary
7) Work on the "presentation-ready" plot
8) Work on the "print-ready" version

<img src="../media/drafts01.jpg" width="50%"><img src="../media/drafts02.jpg" width="22.40%">
