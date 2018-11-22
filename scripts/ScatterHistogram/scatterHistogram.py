# Source: https://plot.ly/python/density-plots/
# Source: https://plot.ly/python/2d-density-plots/

import numpy as np
import plotly
import plotly.figure_factory as ff


t = np.linspace(-1, 1.2, 2000)
x = (t**3) + (0.3 * np.random.randn(2000))
y = (t**6) + (0.3 * np.random.randn(2000))

colorscale = ['#426d9f', (1,1,1)]

fig = ff.create_2d_density(
    x, y, colorscale=colorscale, ncontours=20,
    hist_color='#c4e0f9', point_size=1.5,
    point_color=(0.0, 0.0, 0.0)
)

plotly.offline.iplot(fig, filename='histogram_subplots')
plotly.offline.plot(fig, filename='density2D.html')
