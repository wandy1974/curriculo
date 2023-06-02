#!/bin/bash
#
# Pacotes necessários para rodar o pandoc no Debian/Ubuntu
# apt install pandoc texlive-latex-base texlive-latex-recommended texlive-latex-extra

# Vamos construir todas as versões do currículo

echo
echo "Vamos agora gerar os currículos em PDF a partir dos arquivos .md..."
echo

for h in *.md
    do

    echo " > Processando currículo $(basename $h .md)..."
    pandoc $h -o $(basename $h .md).pdf

done

echo
echo "Pronto!"
echo