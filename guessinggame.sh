#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
function count_files {
  ls -1 | wc -l
}

# Récupérer le nombre de fichiers dans le répertoire courant
correct_count=$(count_files)

echo "Bienvenue dans le jeu de devinettes !"
echo "Essayez de deviner combien de fichiers se trouvent dans le répertoire actuel."

# Boucle jusqu'à ce que l'utilisateur trouve la bonne réponse
while true; do
  read -p "Entrez votre estimation : " user_guess
  
  # Vérification : l'entrée doit être un nombre
  if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
    echo "Veuillez entrer un nombre valide."
    continue
  fi

  # Comparer l'estimation avec le nombre correct
  if (( user_guess < correct_count )); then
    echo "C'est trop bas. Essayez encore."
  elif (( user_guess > correct_count )); then
    echo "C'est trop haut. Essayez encore."
  else
    echo "Félicitations ! Vous avez trouvé le bon nombre."
    break
  fi
done
