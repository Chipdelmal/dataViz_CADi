##############################################################################
# Parallel Lines Plot
# ---------------------------------------------------------------------------
# Source: https://plot.ly/python/parallel-coordinates-plot/
##############################################################################

import plotly
import plotly.graph_objs as go
import pandas as pd

df = pd.read_csv(
    "https://raw.githubusercontent.com/bcdunbar/datasets/master/iris.csv"
)

data = [
    go.Parcoords(
        line=dict(
            color=df['species_id'],
            colorscale=[[0, '#eb5e55'], [0.5, '#d81e5b'], [1, '#426d9f']]
        ),
        dimensions=list([
            dict(range=[0, 8],
                 constraintrange=[4, 8],
                 label='Sepal Length', values=df['sepal_length']),
            dict(range=[0, 8],
                 label='Sepal Width', values=df['sepal_width']),
            dict(range=[0, 8],
                 label='Petal Length', values=df['petal_length']),
            dict(range=[0, 8],
                 label='Petal Width', values=df['petal_width'])
        ])
    )
]

layout = go.Layout(
    plot_bgcolor='#FFFFFF',
    paper_bgcolor='#FFFFFF'
)
fig = go.Figure(data=data, layout=layout)

plotly.offline.iplot(fig, filename='parallel')
plotly.offline.plot(fig, filename='parallel.html')
