#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
count_files() {
    echo $(ls -1 | wc -l)
}

# Obtenir le nombre de fichiers dans le répertoire actuel
correct_answer=$(count_files)

# Demander à l'utilisateur de deviner
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
read user_guess

# Boucle pour vérifier la réponse de l'utilisateur
while [[ $user_guess -ne $correct_answer ]]
do
    if [[ $user_guess -lt $correct_answer ]]
    then
        echo "Votre estimation est trop basse. Essayez encore."
    elif [[ $user_guess -gt $correct_answer ]]
    then
        echo "Votre estimation est trop haute. Essayez encore."
    fi
    read user_guess
done

echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."

