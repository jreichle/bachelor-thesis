import matplotlib.pyplot as plt
import numpy as np
from sklearn import linear_model
from sklearn.metrics import mean_squared_error, r2_score

import matplotlib.pyplot as plt
import numpy as np


x = np.array([0, 1, 1.8, 1.9, 2.1, 2.2])
y = map(lambda x: -2*(x-2)**2+5, x)
x = x.reshape(-1,1)

# FIXME: data ~ parabola
regr = linear_model.LinearRegression()
regr.fit(x,y)

plt.scatter(x, y, color="black")

axes = plt.gca()
y_hat = regr.intercept_ + regr.coef_ * x
plt.plot(x, y_hat, 'k-')

plt.show()
