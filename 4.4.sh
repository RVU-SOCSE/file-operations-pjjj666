#!/bin/bash
read -p "Enter filename to movefile: " movefile
read -p "Enter new name/location: " newloc

if [ -f "$movefile" ]; then
   if cp "$movefile" "$newloc"; then
      echo "File moved successfully."
   else
      echo "Error moving file."
   fi
else
   echo "Source file does not exist."
fi
