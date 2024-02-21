#!/bin/bash

#function to git init a repo
g_init(){
read -p "enter the path for folder you want to init: " path
if [ ! -d "$path" ]; then
	echo path does not exist
	exit 1
fi

if [ -d "$path/.git" ]; then
	echo git repo already initialized.  
fi

cd $path 
pwd
git init
ls $path
}
 
#git add
g_add(){
read -p "enter the name of sub folder or the file you want to add: " file_add
git add $file_add
}


#git commit
g_commit(){
read -p "enter the commit message: " commit_message
git commit -m "$commit_message"
echo committed successfully
}

g_seturl(){
	read -p "enter the repository url (ssh or https):" url
	if [ git remote -v | grep -q origin ]; then
                echo remote repo url already set.
                return 0
        fi

	git remote add origin $url
	echo checking if url is added..
	git remote -v 
}

pushgit(){
git push origin master
}

g_init

if ! g_add; then
	exit 1
	echo unable to add
fi

if ! g_commit 
then
	exit 1
fi

if ! g_seturl
then
	echo something went wrong while setting url
	exit 1 
fi

if ! pushgit; then
	exit 1
fi

