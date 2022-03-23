#!/bin/bash
# Aux functions

newPc () {
	printf " ----- New pc configuration! -----\n"
	printf "Enter your user name:\n> "
	read username
	git config --global user.name "$username"
	printf "Enter your email:\n> "
	read useremail
	git config --global user.email "$useremail"
	for (( i=1; i>0; i++ ))
	do
		echo "Want to save your data? (Credential helper) answer 1 for yes or 0 for no"
		read bool
		if (($bool == 1 || $bool == 0))
		then
			if (($bool == 1))
			then
				git config --global credential.helper store
				break
			elif (($bool == 0))
			then
				break
		fi
		else
			echo "Insert a valid number please."
		fi
	done
}

gitClone () {
	printf "TESTTT\n"
}

newRepo () {
	printf " ----- New repository configuration! -----\n"
	printf "Insert the name of your new repository\n> "
	read repoName
	echo "# $repoName" >> README.md
	git init
	git add README.md
	printf "Insert a message for the first commit\n> "
	read commitMessage
	git commit -m "$commitMessage"
	printf "Branch: main\n"
	git branch -M main
	printf "Insert the link of your repo\n> "
	read repoLink
	git remote add origin "$repoLink"
	git push -u origin main
}

printf "\n ----- Welcome to Git Config! -----\n\n"

while true;
do
	printf "Please type a number to choose an option:\n"
	printf "1. New pc config\n2. Git clone config\n3. New repository\n4. Exit the program\n"
	printf "\nNotes: \nIn order to use the third option, you need to config your pc before\nType help to get a description for each option.\n"
	while true
	do
		printf "> "
		read bool
		case $bool in
			1)
				newPc
				break
				;;
			2)
				gitClone
				break
				;;
			3)
				newRepo
				break
				;;
			4)
				break
				;;
			5)
				printf "1. New pc config 2. Git clone config 3. New repository or 4 to exit the program\n"
				;;
			help)
				printf "\n --- New pc ---\nIt asks you for your username and email in order to set the git config, also ask you if you want to save your credentials.\n"
				printf "\n --- Git clone config ---\nIdk wtf that shit does\n"
				printf "\n --- New repository ---\nIn order to initialize the new repository, asks for the name, creates a README.md file, inits git and adds the README file, ask for a commit message, sets the main branch, asks for the link of your repository, and pushes the changes.\n"
				;;
			*)
				printf "Please choose a valid option, press 5 to see the options\n"
				;;
		esac
	done
	printf "\nComplete!\n\n"
	while true
	do
		printf "Want to continue using the program? y/n\n> "
		read boolS
		case $boolS in
			y)
				continueUsing=1
				break
				;;
			n)
				continueUsing=0
				break
				;;
			*)
				printf "Invalid option, try again\n"
				;;
		esac
	done
	if [ $continueUsing -eq 1 ]
	then
		continue
	else
		printf "\nThanks for using the program! ;)\n\n"
		break
	fi
done