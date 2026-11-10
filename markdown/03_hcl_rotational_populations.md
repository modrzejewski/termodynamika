# Zadanie 3. Obsadzenia poziomów rotacyjnych HCl

## Treść

W jakiej temperaturze liczba cząsteczek HCl w pierwszym rotacyjnym poziomie wzbudzonym jest równa $1/e$ liczby cząsteczek w rotacyjnym poziomie podstawowym? Energia poziomu rotacyjnego o liczbie kwantowej $J$ wynosi

$$
\varepsilon_J = B\,J(J+1), \qquad J = 0, 1, 2, \ldots,
$$

gdzie $B = \hbar^2/(2I)$ jest stałą rotacyjną, a $I$ jest momentem bezwładności cząsteczki. Charakterystyczna temperatura rotacji HCl jest równa

$$
\theta^\text{rot} = \frac{B}{k_B} = \frac{\hbar^2}{2 I k_B} = 15.02~\text{K} .
$$

Prawidłowa odpowiedź: $T = 14.3$ K.

## Wskazówki

- Jaka jest degeneracja $g_J$ poziomu $J$? Ile wartości przyjmuje liczba kwantowa $M$ dla danego $J$?
- W rozkładzie kanonicznym liczba cząsteczek na poziomie $J$ jest proporcjonalna do $g_J\,e^{-\varepsilon_J/k_BT}$.

## Rozwiązanie

Poziom $J$ ma energię $\varepsilon_J = BJ(J+1) = k_B\theta^\text{rot} J(J+1)$. Liczba kwantowa $M$ przyjmuje wartości $-J, -J+1, \ldots, J$, więc degeneracja poziomu wynosi

$$
g_J = 2J + 1 .
$$

W rozkładzie kanonicznym

$$
\frac{N_J}{N} = \frac{g_J\,e^{-\varepsilon_J/k_BT}}{Z} .
$$

W stosunku obsadzeń funkcja podziału się skraca:

$$
\frac{N_1}{N_0} = \frac{g_1}{g_0}\,e^{-(\varepsilon_1 - \varepsilon_0)/k_BT}
= 3\,e^{-2\theta^\text{rot}/T} ,
$$

bo $g_0 = 1$, $g_1 = 3$, $\varepsilon_0 = 0$ i $\varepsilon_1 = 2B = 2k_B\theta^\text{rot}$.

Warunek zadania:

$$
3\,e^{-2\theta^\text{rot}/T} = e^{-1}
\quad\Longrightarrow\quad
\ln 3 - \frac{2\theta^\text{rot}}{T} = -1
\quad\Longrightarrow\quad
T = \frac{2\theta^\text{rot}}{1 + \ln 3} .
$$

Wartość liczbowa:

$$
T = \frac{2 \cdot 15.02~\text{K}}{1 + 1.0986} = 14.3~\text{K} .
$$

**Uwaga.** Pominięcie degeneracji daje błędny wynik $T = 2\theta^\text{rot} \approx 30$ K.
