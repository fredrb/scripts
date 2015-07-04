#!/bin/zsh

# @todo: change the hardcoded user name
function newfile(){
    file="~/.local/share/applications/$1.desktop"
    touch $file
    echo "[Desktop Entry]" >> $file
    echo "Version=1.0" >> $file 
    echo "Terminal=false" >> $file
    echo "Type=Application" >> $file
    echo "Name=$1" >> $file
    echo "Exec=$2" >> $file
    echo "Icon=$3" >> $file
}

# New desktop application entry
echo "Enter app name > "
read name

echo "App executable file > "
read execf

echo "Image file > "
read imgf

cpath=$(pwd)

if [ -f $execf ] ; then
    execf=$cpath/$execf
fi

if [ -f $imgf ] ; then
    imgf=$cpath/$imgf
fi

echo "Please confirm the configuration:"
echo "Name: $name"
echo "Exec: $execf"
echo "Icon: $imgf"
echo 
echo "Is this correct? [Y/n]"

read yn 

if [[ $yn != "n" ]] ; then  
    newfile $name $execf $imgf
fi
