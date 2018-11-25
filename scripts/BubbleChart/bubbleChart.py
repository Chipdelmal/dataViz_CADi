##############################################################################
# Bubble Chart
# ---------------------------------------------------------------------------
# Source: https://plot.ly/python/bubble-charts/
##############################################################################

import math
import plotly
import plotly.graph_objs as go

# [
#         ['ID', 'Life Expectancy', 'Fertility Rate', 'Region',     'Population'],
#         ['CAN',    80.66,              1.67,      'North America',  33739900],
#         ['DEU',    79.84,              1.36,      'Europe',         81902307],
#         ['DNK',    78.6,               1.84,      'Europe',         5523095],
#         ['EGY',    72.73,              2.78,      'Middle East',    79716203],
#         ['GBR',    80.05,              2,         'Europe',         61801570],
#         ['IRN',    72.49,              1.7,       'Middle East',    73137148],
#         ['IRQ',    68.09,              4.77,      'Middle East',    73137148],
#         ['ISR',    81.55,              2.96,      'Middle East',    7485600],
#         ['RUS',    68.6,               1.54,      'Europe',         141850000],
#         ['USA',    78.09,              2.05,      'North America',  307007000]
# ]

lifeExpectancy = [80.66, 79.84, 78.6, 72.73, 80.05, 72.49, 68.09, 81.55, 68.6, 78.09]
population = [33739900, 81902307, 5523095, 79716203, 61801570, 73137148, 73137148, 7485600, 141850000, 307007000]
fertilityRate = [1.67, 1.36, 1.84, 2.78, 2, 1.7, 4.77, 2.96, 1.54, 2.05]
id = ["CAN", "DEU", "DNK", "EGY", "GBR", "IRN", "IRQ", "ISR", "RUS", "USA"]
sizes = [5 * math.sqrt(x / 1000000) for x in population]

data = [
    {
        'x': lifeExpectancy,
        'y': fertilityRate,
        'text': id,
        'mode': 'markers',
        'marker': {
            'color': ["#426d9f", "#8693ab", "#231942", "#9f86c0", "#d81e5b", "#eb5e55", "#bf6d93", "#9bbdf9"],
            'size': sizes,
            'showscale': False
        }
    }
]
layout = go.Layout(
    title='Life Expectancy VS Fertility Rate',
    xaxis=dict(
        title='Life Expectancy',
        gridcolor='rgb(255, 255, 255)',
        range=[min(lifeExpectancy) * .95, max(lifeExpectancy) * 1.05],
        zerolinewidth=1,
        ticklen=5,
        gridwidth=2,
    ),
    yaxis=dict(
        title='Fertility Rate',
        gridcolor='rgb(255, 255, 255)',
        range=[-min(fertilityRate) * .5, max(fertilityRate) * 1.25],
        zerolinewidth=1,
        ticklen=5,
        gridwidth=2,
    ),
    paper_bgcolor='rgb(255, 255, 255)',
    plot_bgcolor='rgb(255, 255, 255)',
)
fig = go.Figure(data=data, layout=layout)
plotly.offline.iplot(fig, filename='scatter-colorscale')
plotly.offline.plot(fig, filename='scatterHistogram.html')
