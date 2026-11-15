#!/bin/bash
function compter_fichiers {
    local nb=$(ls -1 | wc -l)
    echo $nb
}
nombre_correct=$(compter_fichiers)
echo "Combien de fichiers y a-t-il ici ?"
while true
do
    echo -n "Ton estimation : "
    read estimation
    if [[ $estimation -lt $nombre_correct ]]
    then
        echo "Trop bas ! Reessaie."
    elif [[ $estimation -gt $nombre_correct ]]
    then
        echo "Trop haut ! Reessaie."
    else
        echo "Bravo ! Tu as trouve : $nombre_correct"
        break
    fi
done
