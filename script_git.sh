#!/bin/bash

echo 

echo "###################SCRIPT-----GIT###########################"


echo "voulez-vous voir le status de votre depot git? n/y"

read startus

if [[ "$startus" = "y" || "$startus" = "Y" ]]; then
	
	echo "	"

	echo " visionner le status de son depot local"
	
	echo " "
	echo " ########## git status #########"
	echo " "
	git status
	
	echo ""
	echo "ajouter tous vos fichier modifiés n/y"
	read adfile
       
	
        if [[ "$adfile" = "y" || "$adfile" = "Y" ]]; then
		
		echo " entrez '.' pour ajouter tous les fihier modifier ou entrez le nom du fichier spécifique à ajouter "
		read filename

		if [ -n "$filename" ]; then


			if [ "$filename" = "." ]; then

				echo " "
				echo "########## ajout de tous les fichiers modifiés dans le depot local ##########"
             			echo " "
				echo "#####################git add .####################"
				git add .
			else
				echo " "
				echo "########## ajout du fichier nommé: $filename ##########"
				echo
				echo "##########git add $filename########## "
				git add "$filename"

			fi

		else
			echo " aucun fichier spécifié"

		fi
	else
		echo "bye!!"

	fi

	echo " "

	echo "voulez-vous visualiser le status de votre depot local? (n/y)"
	read startus

	if [[ "$startus" = "y" || "$startus" = "Y" ]]; then

		echo " "

		echo "##########Visionnage du status après le git add##########"

		git status

	else
		echo " on continue alors "

	fi


	echo " "

	echo "effectuez le commit de vos modification? (n/y)"

	read comit

	if [[ "$comit" = "y" || "$comit" = "Y" ]]; then

		echo " "
		echo "##########Nous effectuons notre commit##########"

		echo "##########git commit -m 'message'##########"

		echo ""

		echo "Entrez un message pour votre commit"

		read message

		echo " "

		git commit -m "$message"

		echo " "

	else
		echo "ah, ok, on ne fait pas les commites"

	fi

	echo " "

	echo "voulez-vous pusher vos commites ? (n/y)"
	read pusher

	if [[ "$pusher" = "y" || "$pusher" = "Y" ]]; then

		echo " "
		echo "spécifiez le nom de la branche"
		read branche

		if [ -z "$branche" ]; then

			echo " "
			echo "##########Nous allons pusher sur la branche par defaut##########"

			echo"##########git push##########"

			git push

		else
			echo " "
			echo "##########Nous allons pusher sur la branche $branche##########"

			echo "##########git push origin name_branche##########"

			git push origin "$branche"
		fi

	else
		echo "du coup, vous qittez sans pusher, c'est bien çà?!"

	fi



else
	echo "on ne fait rien , bah on se dit bye!!"

fi
