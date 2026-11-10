# Zadanie 5. Pojemność cieplna gazów w temperaturze pokojowej

## Treść

W tabeli podano geometrię oraz charakterystyczne temperatury rotacji $\theta^\text{rot}$ i oscylacji $\theta^\text{vib}$ dla atomu neonu i wybranych cząsteczek. Cząsteczki liniowe mają jedną temperaturę rotacji, a nieliniowe trzy. Liczba w nawiasie przy $\theta^\text{vib}$ oznacza degenerację, czyli liczbę drgań normalnych o tej samej temperaturze charakterystycznej.

| Gaz | Geometria | $\theta^\text{rot}$ (K) | $\theta^\text{vib}$ (K) |
|---|---|---|---|
| Ne | pojedynczy atom | — | — |
| CO₂ | liniowa | 0.561 | 3360, 954 (2), 1890 |
| H₂O | nieliniowa (kątowa) | 40.1, 20.9, 13.4 | 5360, 5160, 2290 |
| NH₃ | nieliniowa (piramidalna) | 13.6, 13.6, 8.92 | 4800, 1360, 4880 (2), 2330 (2) |
| ClO₂ | nieliniowa (kątowa) | 2.50, 0.478, 0.400 | 1360, 640, 1600 |
| SO₂ | nieliniowa (kątowa) | 2.92, 0.495, 0.422 | 1660, 750, 1960 |
| N₂O | liniowa | 0.603 | 3200, 850 (2), 1840 |
| CH₄ | nieliniowa (tetraedryczna) | 7.54, 7.54, 7.54 | 4170, 2180 (2), 4320 (3), 1870 (3) |
| CH₃Cl | nieliniowa (tetraedryczna) | 7.32, 0.637, 0.637 | 4270, 1950, 1050, 4380 (2), 2140 (2), 1460 (2) |
| CCl₄ | nieliniowa (tetraedryczna) | 0.0823, 0.0823, 0.0823 | 660, 310 (2), 1120 (3), 450 (3) |

- (a) Jaką pojemność cieplną $C_V/(Nk_B)$ przewidujesz dla wymienionych gazów w temperaturze pokojowej, $T = 298$ K? Każdy gaz traktuj jako doskonały. Przyjmij, że stopnie swobody o temperaturze charakterystycznej $\theta \ll T$ są w reżimie klasycznym, a stopnie swobody o $\theta \gg T$ są zamrożone.
- (b) Dla których gazów oszacowanie z punktu (a) jest najmniej pewne? Wskaż drgania, dla których $\theta^\text{vib}$ jest porównywalne z $T$.

## Wskazówki

- Pojemność cieplna gazu doskonałego jest sumą wkładów translacji, rotacji i drgań. Wzbudzenia elektronowe pomiń.
- Zasada ekwipartycji: każdy kwadratowy wyraz w klasycznej energii cząsteczki daje wkład $k_BT/2$ do jej średniej energii, czyli $k_B/2$ do $C_V/N$.
- Translacje: ile kwadratowych wyrazów ma energia kinetyczna ruchu środka masy?
- Rotacje: porównaj $\theta^\text{rot}$ z $T$. Ile niezależnych rotacji ma cząsteczka liniowa, a ile nieliniowa? Pojedynczy atom nie wnosi wkładu rotacyjnego.
- Drgania: cząsteczka złożona z $n$ atomów ma $3n - 5$ (liniowa) lub $3n - 6$ (nieliniowa) drgań normalnych. Sprawdź tę liczbę w tabeli, uwzględniając degeneracje.
- Energia drgania w reżimie klasycznym ma dwa kwadratowe wyrazy: kinetyczny i potencjalny. Drganie zamrożone nie wnosi wkładu.

## Rozwiązanie

### (a) Oszacowanie w reżimie klasycznym

Wkłady do $C_V/(Nk_B)$ z zasady ekwipartycji:

- **Translacje.** Energia kinetyczna środka masy, $(p_x^2 + p_y^2 + p_z^2)/2m$, ma trzy kwadratowe wyrazy. Wkład wynosi $3/2$ dla każdego gazu. Translacje są zawsze w reżimie klasycznym.
- **Rotacje.** Największa temperatura rotacji w tabeli to $40.1$ K dla H₂O, czyli $T/\theta^\text{rot} \approx 7$. Rotacje wszystkich cząsteczek są więc w reżimie klasycznym. Cząsteczka liniowa ma dwie rotacje (wkład $1$), a nieliniowa trzy (wkład $3/2$). Atom Ne nie ma rotacji.
- **Drgania.** Drganie w reżimie klasycznym wnosi $1$ (energia kinetyczna i potencjalna), a drganie zamrożone wnosi $0$. Liczby drgań w tabeli zgadzają się z $3n - 5$ dla CO₂ i N₂O (po 4) oraz z $3n - 6$ dla pozostałych cząsteczek (3 dla cząsteczek trójatomowych, 6 dla NH₃, 9 dla CH₄, CH₃Cl i CCl₄).

Poza CCl₄ najniższa temperatura drgań wynosi co najmniej 640 K (ClO₂), czyli ponad $2T$. Te drgania traktujemy jako zamrożone. W CCl₄ pięć drgań ma $\theta^\text{vib}$ bliskie $T$: 310 K (2) i 450 K (3). Traktujemy je jako klasyczne, a pozostałe drgania (660 K i 1120 K) jako zamrożone.

| Gaz | Geometria | Translacje | Rotacje | Drgania | $C_V/(Nk_B)$ |
|---|---|---|---|---|---|
| Ne | atom | 3/2 | 0 | 0 | 1.5 |
| CO₂, N₂O | liniowa | 3/2 | 1 | 0 | 2.5 |
| H₂O, NH₃, ClO₂, SO₂, CH₄, CH₃Cl | nieliniowa | 3/2 | 3/2 | 0 | 3 |
| CCl₄ | nieliniowa | 3/2 | 3/2 | 5 | 8 |

### (b) Wiarygodność oszacowania

Oszacowanie jest najmniej pewne dla gazów, w których któreś drganie ma $\theta^\text{vib}/T$ rzędu od 1 do 3:

- CCl₄: 310 K ($\theta^\text{vib}/T = 1.0$), 450 K ($1.5$), 660 K ($2.2$), a nawet 1120 K ($3.8$). Wynik zależy silnie od tego, które drgania uznamy za aktywne: od 3 (wszystkie zamrożone) do 12 (wszystkie klasyczne).
- ClO₂: 640 K ($2.1$); SO₂: 750 K ($2.5$); N₂O: 850 K (2) ($2.9$); CO₂: 954 K (2) ($3.2$); CH₃Cl: 1050 K ($3.5$).

Dla Ne oszacowanie jest dokładne, bo atom nie ma rotacji ani drgań. Dla H₂O i CH₄ jest dobre: wszystkie $\theta^\text{vib}$ są co najmniej 6 razy większe od $T$.

### Porównanie z modelem oscylatora harmonicznego

Kwantowy oscylator harmoniczny daje wkład pojedynczego drgania

$$
\frac{C_V^\text{vib}}{Nk_B} = \left(\frac{\theta^\text{vib}}{T}\right)^2
\frac{e^{\theta^\text{vib}/T}}{\left(e^{\theta^\text{vib}/T} - 1\right)^2} .
$$

Wkład dąży do $1$ dla $\theta^\text{vib} \ll T$ i do $0$ dla $\theta^\text{vib} \gg T$. Dla $\theta^\text{vib}/T = 1$ wynosi $0.92$, dla $2$ wynosi $0.72$, a dla $3$ wynosi $0.50$. Po zsumowaniu wkładów wszystkich drgań w $T = 298$ K:

| Gaz | Oszacowanie (a) | Oscylator harmoniczny |
|---|---|---|
| Ne | 1.5 | 1.50 |
| CO₂ | 2.5 | 3.48 |
| H₂O | 3 | 3.03 |
| NH₃ | 3 | 3.27 |
| ClO₂ | 3 | 4.05 |
| SO₂ | 3 | 3.78 |
| N₂O | 2.5 | 3.64 |
| CH₄ | 3 | 3.29 |
| CH₃Cl | 3 | 3.89 |
| CCl₄ | 8 | 9.03 |

Największe różnice występują dokładnie dla gazów wskazanych w punkcie (b). Dla CO₂ doświadczalny stosunek $\gamma = C_p/C_V = 1.29$ i związek $C_p = C_V + Nk_B$ dają $C_V/(Nk_B) = 1/(\gamma - 1) \approx 3.45$, blisko wyniku oscylatora harmonicznego.
