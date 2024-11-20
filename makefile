# Variables
SCRIPT = guessinggame.sh
README = README.md

# Commande par défaut
all: $(README)

# Génération de README.md
$(README): $(SCRIPT)
	echo "# Projet Guessing Game" > $(README)
	echo "" >> $(README)
	echo "Ce fichier a été généré automatiquement le : $$(date)" >> $(README)
	echo "" >> $(README)
	echo "Le script contient $$(wc -l < $(SCRIPT)) lignes de code." >> $(README)

# Nettoyage
clean:
	rm -f $(README)
