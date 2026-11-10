# Zadanie 2. Układ o równoodległych poziomach energetycznych

## Treść

Rozważamy opisany rozkładem kanonicznym układ znajdujący się w równowadze ze zbiornikiem ciepła o temperaturze $T$. Poziomy energetyczne układu dane są przez

$$
\varepsilon_j = j\,\varepsilon, \qquad j = 0, 1, 2, 3, \ldots, \infty ,
$$

gdzie $\varepsilon > 0$ jest odległością między sąsiednimi poziomami energetycznymi. Wiemy, że średnia energia tego układu to

$$
\langle E \rangle = E(T) = \alpha\varepsilon ,
$$

gdzie $\alpha > 0$ jest pewnym wyrażeniem.

**(a)** Pokaż, że temperatura $T$ rozważanego układu spełnia równanie

$$
\frac{1}{k_B T} = \frac{1}{\varepsilon}\ln\left(1 + \frac{1}{\alpha}\right).
$$

**(b)** Pokaż, że entropia układu dana jest wyrażeniem

$$
S = k_B(1 + \alpha)\ln(1 + \alpha) - k_B\,\alpha\ln\alpha .
$$

## Wskazówki

**(a) Temperatura.**

- Zapisz kanoniczną funkcję podziału układu jako sumę po poziomach energetycznych:

$$
Z = \sum_{j=0}^{\infty} e^{-\varepsilon_j/k_BT} .
$$

- Kolejne wyrazy tej sumy tworzą szereg geometryczny. Jaki jest jego iloraz? Skorzystaj ze wzoru $\sum_{j=0}^{\infty} q^j = 1/(1 - q)$ dla $|q| < 1$.
- Korzystając z $Z$, oblicz średnią energię:

$$
E(T,V,N) = k_BT^2\,\frac{\partial}{\partial T}\ln Z(T,V,N) .
$$

**(b) Entropia.**

- Skorzystaj ze wzoru $S = k_B\ln Z + E/T$.
- Dzięki wynikowi punktu (a) możesz wyrazić $\ln Z$ i $E/T$ przez $\alpha$ zamiast przez $T$.

## Rozwiązanie

### (a) Temperatura

Kanoniczna funkcja podziału jest sumą szeregu geometrycznego o ilorazie $e^{-\varepsilon/k_BT} < 1$:

$$
Z = \sum_{j=0}^{\infty} e^{-j\varepsilon/k_BT}
= \sum_{j=0}^{\infty} \left(e^{-\varepsilon/k_BT}\right)^j
= \frac{1}{1 - e^{-\varepsilon/k_BT}} .
$$

Logarytm funkcji podziału i jego pochodna po temperaturze:

$$
\ln Z = -\ln\left(1 - e^{-\varepsilon/k_BT}\right),
\qquad
\frac{\partial\ln Z}{\partial T}
= \frac{\varepsilon}{k_BT^2}\,\frac{e^{-\varepsilon/k_BT}}{1 - e^{-\varepsilon/k_BT}} .
$$

Średnia energia:

$$
E(T,V,N) = k_BT^2\,\frac{\partial\ln Z}{\partial T}
= \frac{\varepsilon\,e^{-\varepsilon/k_BT}}{1 - e^{-\varepsilon/k_BT}}
= \frac{\varepsilon}{e^{\varepsilon/k_BT} - 1} .
$$

Przyrównujemy ten wynik do $E = \alpha\varepsilon$:

$$
\frac{1}{e^{\varepsilon/k_BT} - 1} = \alpha
\quad\Longrightarrow\quad
e^{\varepsilon/k_BT} = 1 + \frac{1}{\alpha} .
$$

Po zlogarytmowaniu

$$
\frac{1}{k_B T} = \frac{1}{\varepsilon}\ln\left(1 + \frac{1}{\alpha}\right).
$$

### (b) Entropia

Z punktu (a) mamy

$$
e^{-\varepsilon/k_BT} = \frac{\alpha}{1 + \alpha},
\qquad
1 - e^{-\varepsilon/k_BT} = \frac{1}{1 + \alpha} .
$$

Stąd logarytm funkcji podziału wyrażony przez $\alpha$:

$$
\ln Z = -\ln\left(1 - e^{-\varepsilon/k_BT}\right) = \ln(1 + \alpha) .
$$

Drugi wyraz entropii, $E/T = k_B\,E/(k_BT)$, wyrażony przez $\alpha$:

$$
\frac{E(T)}{T} = k_B\,\alpha\varepsilon\cdot\frac{1}{\varepsilon}\ln\frac{1 + \alpha}{\alpha}
= k_B\,\alpha\ln(1 + \alpha) - k_B\,\alpha\ln\alpha .
$$

Po dodaniu obu wyrazów

$$
S = k_B\ln Z + \frac{E(T)}{T}
= k_B\ln(1 + \alpha) + k_B\,\alpha\ln(1 + \alpha) - k_B\,\alpha\ln\alpha
= k_B(1 + \alpha)\ln(1 + \alpha) - k_B\,\alpha\ln\alpha .
$$

### Uwagi

- Rozważany układ to kwantowy oscylator harmoniczny, $\varepsilon = \hbar\omega$, z energią liczoną od poziomu podstawowego. Wyrażenie $\alpha = \langle j\rangle$ to średnia liczba kwantów wzbudzenia.
- Niska temperatura, $\alpha \to 0$: $S \to 0$, bo $\alpha\ln\alpha \to 0$ i $\ln(1 + \alpha) \to 0$. Układ zajmuje stan podstawowy.
- Wysoka temperatura, $\alpha \gg 1$: $\ln(1 + 1/\alpha) \approx 1/\alpha - 1/(2\alpha^2)$, więc $k_BT \approx \varepsilon\left(\alpha + \tfrac{1}{2}\right)$, czyli $E \approx k_BT - \varepsilon/2$. Energia rośnie liniowo z temperaturą, jak dla oscylatora klasycznego.
