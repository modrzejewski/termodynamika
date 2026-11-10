# Zadanie 6. Elektronowy wkład do entropii tlenu

## Treść

Podstawowy poziom energii elektronowej cząsteczki O₂ ma degenerację $g_0 = 3$. Pierwszy wzbudzony poziom energii elektronowej ma degenerację $g_1 = 2$ i leży $\tilde\nu = 7824$ cm⁻¹ powyżej poziomu podstawowego. Wyższe poziomy elektronowe pomiń. Tlen traktuj jako gaz doskonały.

- (a) Oblicz elektronowy wkład do entropii molowej tlenu, $S^\text{el}_m$, w temperaturze $T = 5000$ K.
- (b) Oblicz $S^\text{el}_m$ w tej samej temperaturze, uwzględniając tylko poziom podstawowy. Porównaj oba wyniki.

Stałe: $h = 6.626\times 10^{-34}$ J s, $c = 2.998\times 10^{10}$ cm/s, $k_B = 1.381\times 10^{-23}$ J/K, $R = 8.314$ J/(mol K).

Prawidłowa odpowiedź: (a) $S^\text{el}_m = 10.9$ J/(mol K), (b) $S^\text{el}_m = 9.1$ J/(mol K).

## Wskazówki

- Zapisz elektronową funkcję podziału jednej cząsteczki, $q^\text{el}$. Przyjmij energię poziomu podstawowego równą zeru i pamiętaj o degeneracjach.
- Cząsteczki nie oddziałują, więc dla $N$ cząsteczek $Z^\text{el} = (q^\text{el})^N$ (czynnik $1/N!$ poznany na wykładzie uwzględnia się w części translacyjnej).
- Entropia: $S^\text{el} = k_B\ln Z^\text{el} + E^\text{el}(T)/T$, gdzie $E^\text{el}(T) = k_BT^2\,\partial\ln Z^\text{el}/\partial T$.
- Energia wzbudzenia: $\varepsilon = hc\tilde\nu$.

## Rozwiązanie

### (a) Oba poziomy elektronowe

Elektronowa funkcja podziału jednej cząsteczki, z energią poziomu podstawowego równą zeru:

$$
q^\text{el} = g_0 + g_1\,e^{-\varepsilon/k_BT} = 3 + 2\,e^{-\varepsilon/k_BT} .
$$

Dla $N$ nieoddziałujących cząsteczek $\ln Z^\text{el} = N\ln q^\text{el}$. Pochodna po temperaturze:

$$
\frac{\partial\ln Z^\text{el}}{\partial T}
= N\,\frac{\varepsilon}{k_BT^2}\,\frac{2\,e^{-\varepsilon/k_BT}}{3 + 2\,e^{-\varepsilon/k_BT}} .
$$

Energia elektronowa:

$$
E^\text{el} = k_BT^2\,\frac{\partial\ln Z^\text{el}}{\partial T}
= N\varepsilon\,\frac{2\,e^{-\varepsilon/k_BT}}{3 + 2\,e^{-\varepsilon/k_BT}} .
$$

Entropia elektronowa:

$$
S^\text{el} = k_B\ln Z^\text{el} + \frac{E^\text{el}}{T}
= Nk_B\ln\left(3 + 2\,e^{-\varepsilon/k_BT}\right)
+ \frac{N\varepsilon}{T}\,\frac{2\,e^{-\varepsilon/k_BT}}{3 + 2\,e^{-\varepsilon/k_BT}} .
$$

Wartości liczbowe. Temperatura charakterystyczna wzbudzenia:

$$
\frac{\varepsilon}{k_B} = \frac{hc\tilde\nu}{k_B} = 1.126\times 10^{4}~\text{K},
\qquad
\frac{\varepsilon}{k_BT} = 2.251,
\qquad
e^{-\varepsilon/k_BT} = 0.1053 .
$$

Stąd $q^\text{el} = 3.2105$, $\ln q^\text{el} = 1.1665$ i

$$
\frac{\varepsilon}{k_BT}\,\frac{2\,e^{-\varepsilon/k_BT}}{q^\text{el}} = 0.1476 .
$$

Dla jednego mola ($N_Ak_B = R$):

$$
S^\text{el}_m = R\,(1.1665 + 0.1476) = 10.9~\text{J/(mol K)} .
$$

### (b) Tylko poziom podstawowy

Wtedy $q^\text{el} = g_0 = 3$ nie zależy od temperatury, więc $E^\text{el} = 0$ i

$$
S^\text{el}_m = R\ln 3 = 9.13~\text{J/(mol K)} .
$$

Uwzględnienie poziomu wzbudzonego zwiększa entropię elektronową o $1.8$ J/(mol K), czyli o około 20 %.

### Uwagi

- Na poziomie wzbudzonym jest ułamek $2\,e^{-\varepsilon/k_BT}/q^\text{el} = 0.066$ cząsteczek. Mimo tak małego obsadzenia wkład do entropii jest wyraźny.
- W 298 K mamy $\varepsilon/k_BT \approx 38$. Poziom wzbudzony jest wtedy praktycznie pusty i $S^\text{el}_m = R\ln 3$.
