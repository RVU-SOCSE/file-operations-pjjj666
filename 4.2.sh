#!/bin/bash
read -p "Enter filename to create:" file
if [ -f "$file" ];then
echo "Error:File already exists!"
else
    touch "$file"
    if [ $? -eq 0 ]; then
       echo "File '$file' created succesfully."
else
      echo "Error creating file." 
     fi

fi
