# Pythonコード
from decimal import Decimal, getcontext
import numpy as np

getcontext().prec = 28  # 任意の桁数に設定

dx = Decimal('0.05')
L = Decimal('10')
x = np.arange(-L, L + dx, dx)
y = np.arange(-L, L + dx, dx)
z = np.arange(-L, L + dx, dx)
x = x + (dx/2)
y = y + (dx/2)
z = z + (dx/2)
X, Y, Z = np.meshgrid(x, y, z)
invR2 = 1/(X**2 + Y**2 + Z**2).astype(Decimal)

Ep1 = X * 0 + 1
Ep2 = Ep1

Z_condition = np.logical_and(Z >= Decimal('0.1'), Z <= Decimal('0.6'))
Ep2[Z_condition] = Decimal('4.01')

result = np.sum(Ep2 * invR2) / np.sum(Ep1 * invR2)
print(result)