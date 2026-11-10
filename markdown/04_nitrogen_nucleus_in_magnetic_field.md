# Zadanie 4. Jądro azotu w polu magnetycznym

## Treść

Jądro atomu azotu jest obdarzone momentem magnetycznym, który może przyjmować trzy orientacje w polu magnetycznym $B$. Stanom tym odpowiadają trzy poziomy energetyczne o energiach, kolejno,

$$
\varepsilon_0 = -\gamma_N\hbar B, \qquad
\varepsilon_1 = 0, \qquad
\varepsilon_2 = +\gamma_N\hbar B .
$$

- (a) Wyprowadź funkcję podziału $Z(T)$ pojedynczego jądra azotu w polu magnetycznym.
- (b) Wyprowadź średnią energię $E(T)$ pojedynczego jądra.
- (c) Oblicz granice $\lim_{T\to 0} E(T)$ oraz $\lim_{T\to\infty} E(T)$.
- (d) Wyprowadź wyrażenia na populacje (obsadzenia) poziomów wzbudzonych względem stanu podstawowego, zdefiniowane jako $f_1 = N_1/N_0$ i $f_2 = N_2/N_0$, gdzie $N_0$ oznacza liczbę jąder w stanie podstawowym $\varepsilon_0$, $N_1$ jest liczbą jąder w pierwszym stanie wzbudzonym $\varepsilon_1$, a $N_2$ jest liczbą jąder w drugim stanie wzbudzonym $\varepsilon_2$.
- (e) Oblicz $f_1$ i $f_2$ w temperaturach: (i) $T = 1.0$ K, (ii) $T = 298$ K, (iii) $T = \infty$.

Stałe: $\gamma_N\hbar = 2.04\times 10^{-27}$ J/T, $B = 20$ T, $k_B = 1.381\times 10^{-23}$ J/K.

## Rozwiązanie

Oznaczmy $\Delta = \gamma_N\hbar B$. Poziomy mają energie $-\Delta$, $0$ i $+\Delta$.

### (a) Funkcja podziału

$$
Z(T) = e^{\Delta/k_BT} + 1 + e^{-\Delta/k_BT} = 1 + 2\cosh\frac{\Delta}{k_BT} .
$$

### (b) Średnia energia

Pochodna logarytmu funkcji podziału po temperaturze:

$$
\frac{\partial\ln Z}{\partial T}
= \frac{1}{Z}\cdot 2\sinh\frac{\Delta}{k_BT}\cdot\left(-\frac{\Delta}{k_BT^2}\right) .
$$

Średnia energia:

$$
E(T) = k_BT^2\,\frac{\partial\ln Z}{\partial T}
= -\frac{2\Delta\sinh(\Delta/k_BT)}{1 + 2\cosh(\Delta/k_BT)} .
$$

Ten sam wynik daje średnia ważona:

$$
E = \frac{(-\Delta)\,e^{\Delta/k_BT} + 0 + \Delta\,e^{-\Delta/k_BT}}{Z}
= -\frac{2\Delta\sinh(\Delta/k_BT)}{1 + 2\cosh(\Delta/k_BT)} .
$$

### (c) Granice

- $T \to 0$: w $Z$ dominuje wyraz $e^{\Delta/k_BT}$, a $\sinh x \approx \cosh x \approx e^x/2$ dla dużych $x$. Stąd

$$
\lim_{T\to 0} E(T) = -\Delta = -\gamma_N\hbar B .
$$

  Wszystkie jądra zajmują stan podstawowy.
- $T \to \infty$: $\sinh(\Delta/k_BT) \to 0$ i $Z \to 3$. Stąd

$$
\lim_{T\to\infty} E(T) = 0 .
$$

  Każdy poziom jest obsadzony z prawdopodobieństwem $1/3$, a średnia z energii $-\Delta$, $0$, $+\Delta$ wynosi zero.

### (d) Populacje

Z rozkładu kanonicznego $N_i/N = e^{-\varepsilon_i/k_BT}/Z$. W stosunku obsadzeń funkcja podziału się skraca:

$$
f_1 = \frac{N_1}{N_0} = e^{-(\varepsilon_1 - \varepsilon_0)/k_BT} = e^{-\Delta/k_BT},
\qquad
f_2 = \frac{N_2}{N_0} = e^{-(\varepsilon_2 - \varepsilon_0)/k_BT} = e^{-2\Delta/k_BT} .
$$

### (e) Wartości liczbowe

$$
\Delta = 2.04\times 10^{-27}~\text{J/T} \cdot 20~\text{T} = 4.08\times 10^{-26}~\text{J},
\qquad
\frac{\Delta}{k_B} = 2.95\times 10^{-3}~\text{K} .
$$

| $T$ | $\Delta/k_BT$ | $f_1$ | $f_2$ |
|---|---|---|---|
| 1.0 K | $2.95\times 10^{-3}$ | 0.99705 | 0.99411 |
| 298 K | $9.91\times 10^{-6}$ | 0.99999 | 0.99998 |
| $\infty$ | 0 | 1 | 1 |

Temperatura charakterystyczna wynosi około 3 mK. Nawet w 1 K obsadzenia trzech poziomów różnią się o mniej niż 1 %. W 298 K różnice są rzędu $10^{-5}$.
