#!/usr/bin/env bash
# Kompiluje zestaw zadań do pliku problems.pdf w katalogu tex/.
# Użycie: ./compile.sh (z dowolnego katalogu)
set -euo pipefail

cd "$(dirname "$0")"

latexmk -pdf -interaction=nonstopmode -halt-on-error problems.tex

# Usuń pliki pomocnicze, zostaw PDF
latexmk -c problems.tex
