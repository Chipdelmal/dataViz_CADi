##############################################################################
# Stacked Area
##############################################################################

import numpy as np
import plotly
import plotly.graph_objs as go

# Loading data
inData = np.genfromtxt('deterministicData.csv', delimiter=',')
labels = ["W", "H", "R"]
colors = [
    "rgb(25,128,255)", "rgb(255,25,128)",
    "rgb(128,0,255)", "rgb(255,0,255)"
]
# Generating traces
tracesList = []
for i in range(0, len(labels)):
    trace = dict(
        x=list(range(0, len(inData))),
        y=inData[:, i],
        stackgroup='one',
        #groupnorm='fraction',
        mode='lines',
        line=dict(width=3, color=colors[i]),
        name=labels[i]
    )
    tracesList.append(trace)
# Setting up the layout
layout = go.Layout(
    title='Genotypes Breakdown',
    xaxis=dict(
        title='Time [days]',
        titlefont=dict(size=20, color='#7f7f7f')
    ),
    yaxis=dict(
        title='Allele Frequency',
        titlefont=dict(size=20, color='#7f7f7f')
    ),
    width=1500,
    height=400
)
# Plotting
fig = go.Figure(data=tracesList, layout=layout)
# py.iplot(fig,filename='stacked-area-plot-hover',validate=False)
plotly.offline.plot(fig, filename='alleleFrequencyPython.html')
