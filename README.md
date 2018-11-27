# dataViz CADi

This repository contains the materials for the "Data Visualization" one week intensive [CADi](http://sitios.itesm.mx/va/capacitacion/1_2.html) (["Cursos de Actualización en las Disciplinas"](http://sitios.itesm.mx/va/capacitacion/1_2.html)) course taught to professors of the ["Tecnológico de Monterrey"](https://tec.mx/es) Institute on December of 2018 at "Estado de México" campus.

<br><img src="./docs/media/images/headerImage.jpg"  width="100%"><br>

This is a compendium of materials and activities designed to develop and improve skills to make charts and plots more interactive/appealing, and to show some of the tools we can use to achieve better exposure of our work in scientific, and engineering applications.

<hr>

## Requirements

Although not strictly required, having some knowledge on one of the following programming languages is suggested (as we'll be using them throughout the course):

* [Mathematica](http://www.wolfram.com/mathematica/): Most of the graphics showcased in the website were developed in this platform due to its flexibility in terms of graphical capabilities.
* [Python](https://www.python.org/): One of the most popular programming languages. Some of the more versatile data visualization frameworks are compatible with it.
* [R + RStudio](https://www.r-project.org/): A popular statistical framework with lots of community support with its most popular IDE.

There's examples developed in each of the platforms according to the application and availability of frameworks for specific tasks.

It is also suggested to have the [atom](https://atom.io/) text editor for the markdown and python examples. For a useful guide on how to install R and Python kernels in Atom follow this [link](https://jstaf.github.io/2018/03/25/atom-ide.html).

Some other useful packages for development in atom are:

* [Markdown Preview Enhanced](https://atom.io/packages/markdown-preview-enhanced): Allows the live update of markdown documents previews.
* [Hydrogen](https://atom.io/packages/hydrogen): Package that allows running Python code in [Jupyter](http://jupyter.org/)-style from within atom.
* [Preview HTML](https://atom.io/packages/atom-html-preview): Allows us to view the results of our HTML within atom.

<hr>

## Contents

### Day 01 (8h)

<b>Goal:</b> To describe the basic principles of data visualization, the types of plots that better describe certain datasets, and perform some common data visualization examples that are common across different fields.

1. [Introduction](./markdowns/intro.md): Objectives, Scope, My background
2. [Data Visualization Primer](./markdowns/dataVizPrimer.md): Data visualization workflow
3. [Mathematica/R/Python Primer](./markdowns/programmingPrimer.md): Brief introduction to programming languages
4. [Plot Types (first part)](./markdowns/plotTypes.md): Counts, Scatter, Time Series, Transitions
5. [Data Handling/Data Sources](./markdowns/dataHandlingAndDataSources.md): Data Formats, Data Handling Frameworks
6. [Colors](./markdowns/colors.md): Color Palettes

<br><img src="./docs/media/images/blue.png" width="100%"><br>

### Day 02 (8h)

<b>Goal:</b> To describe and run through some examples of popular data visualization frameworks.

1. [Media Formats](./markdowns/formats.md): Raster-based, Vector-based
2. [Plot Types (second part)](./markdowns/plotTypes.md): Clustering, Factorial, Multidimensional data, Geographic
3. [Good Practices](./markdowns/goodPractices.md): Suggestions to make data visualization clearer
4. [Some Visualizaiton Frameworks](./markdowns/frameworks.md): ggplot, plotly, networkD3, D3js

<br><img src="./docs/media/images/aggregation.png" width="100%"><br>

### Day 03 (8h)

<b>Goal:</b> To be able to put together a project website and host some of the examples created throughout the course for better exposure of our work.

1. [Markdown + HTML Primer](./markdowns/markdown.md): Introduction to MD and HTML for presentations
2. [gh-pages](./markdowns/ghPages.md): Github pages, "Docs" folder, "gh-pages" branch
3. [Remark](./markdowns/remark.md): One of the frameworks to create simple markdown presentations
4. [Revealjs](./markdowns/revealjs.md): MathJax-supported javascript HTML presentations framework
5. [ffmpeg](./markdowns/ffmpeg.md): Stop-motion animations, Further video editing

<br><img src="./docs/media/images/crispr.jpg" width="100%"><br>

<hr>

## Resources

A compendium of available resources for data visualization activities.


### Tools

* [atom](https://atom.io/): Versatile IDE for R, Python, Markdown, Javascript, amongst others
* [ffmpeg](https://www.ffmpeg.org/): Video Manipulation command line tool (can be used to create "stop-motion" animations)
* [ggplot2](https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf): Plotting in R
* [gimp](https://www.gimp.org/): Free "photoshop" alternative
* [github pages](https://pages.github.com/): Github pages
* [irkernel](https://irkernel.github.io/installation/): R kernel for jupyter
* [jekyll](https://jekyllrb.com/): Blog-like templates for github pages (Ruby)
* [leaflet](https://leafletjs.com/): Open-source JavaScript library for interactive maps
* [matplotlib](https://matplotlib.org/): Python plotting
* [mathjax](https://www.mathjax.org/): Use latex in html documents through javascript
* [networkD3](https://christophergandrud.github.io/networkD3/): R Network Plotting
* [plotly](https://plot.ly/): Interactive plots (both in R, and Python)
* [python](https://www.python.org/): General-purpose programming language
* [R](https://www.r-project.org/): Statistical computing programming language
* [RColorBrewer](https://www.rdocumentation.org/packages/RColorBrewer/versions/1.1-2/topics/RColorBrewer): Color palettes for R
* [remark](https://github.com/gnab/remark): Markdown presentations
* [revealjs](https://revealjs.com/#/): Javascript presentations
* [rStudio](https://www.rstudio.com/): R IDE
* [sciweavers](http://www.sciweavers.org/free-online-latex-equation-editor): Latex to image converter to embed them into markdown
* [shiny](http://shiny.rstudio.com/): Interactive web development though R
* [slides](https://slides.com/): GUI for revealjs
* [tydiverse](https://www.tidyverse.org/): Collection of R packages designed for data science.

### Online

* Coolors Color Palettes: https://coolors.co
* Data Visualization Catalogue: https://datavizcatalogue.com/index.html
* Data Wrapper: https://app.datawrapper.de/
* Google Charts: https://developers.google.com/chart/interactive/docs/
* Markdown Cheatsheet: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
* Markdown Specs: https://github.github.com/gfm/
* Observable: https://beta.observablehq.com/collection/@observablehq/
* Plots and Charts Galleries: https://datavizproject.com/
* Plot Type Selector: http://chartmaker.visualisingdata.com/
* The R Graph Gallery: https://www.r-graph-gallery.com
* The Truthful Art: https://truth-and-beauty.net/

### Books

* [Adams, S., & Helfand, J. (2017). The designer’s dictionary of color. 9781419723919](https://www.amazon.com/Designers-Dictionary-Color-Sean-Adams/dp/141972391X/ref=sr_1_1?ie=UTF8&qid=1540755233&sr=8-1&keywords=the+designers+dictionary+of+color)
* [Cairo, Alberto (2016). The truthful art: data, charts, and maps for communication.  ISBN-13: 978-0321934079 ](http://www.thefunctionalart.com/p/the-truthful-art-book.html)
* [Kirk, A. (2016). Data Visualisation: A Handbook for Data Driven Design. ISBN-13: 978-1473912144](http://www.visualisingdata.com/book/)
* [McKinney, W. Python for Data Analysis - Data Wrangling with Pandas, Numpy and Python. (2018). ISBN-13: 1491957662](https://www.amazon.com/Python-Data-Analysis-Wrangling-IPython/dp/1491957662/ref=asc_df_1491957662/?tag=hyprod-20&linkCode=df0&hvadid=312140868236&hvpos=1o1&hvnetw=g&hvrand=2146894602476699957&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9032076&hvtargid=pla-396828636441&psc=1)
* [Yau, N. (2011). Visualize this : the FlowingData guide to design, visualization, and statistics. Wiley Pub. ISBN-13: 978-0470944882](https://flowingdata.com/books/)
* [Yau, N. (2013). Data points: visualization that means something. ISBN-13: 978-1118462195](https://flowingdata.com/books/)

<br><img src="./media/flow.jpg"  width="100%"><br>

<hr>

## [Ph.D. Héctor Manuel Sánchez Castellanos](./Day01/cv.md)

<img src="./docs/media/berkeley.jpg" width="200"><img src="./docs/media/itesm.png" width="200"><br>
