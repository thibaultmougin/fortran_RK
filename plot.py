import numpy as np
import matplotlib.pyplot as plot
#data = np.loadtxt("plot_me.dat")
#x,y=np.loadtxt("plot_me.dat",unpack=True) #thanks warren!
#x,y =  zip(*data)
#plot.plot(x, y, linewidth=2.0)
plot.plot(*np.loadtxt("data.dat",unpack=True), linewidth=2.0)

plot.grid(True)
plot.xlabel('x')
plot.ylabel('u')
plot.title('Fortran_RK')

plot.show()