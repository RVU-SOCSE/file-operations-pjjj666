!/bin/bash
read -p "Enter filename to copy: " source
read -p "Enter new file (destination): " dest

if [ -f "$source" ]; then
   if cp "$source" "$dest"; then
      echo "File copied successfully."
   else
      echo "Error copying file."
   fi
else
   echo "Source file does not exist."
fi
