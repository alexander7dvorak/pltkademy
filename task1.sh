#!/bin/bash

# Replace all occurences of the first string argument of the script 
# with the second one in all files in the cwd

sed -i 's/'"$1"'/'"$2"'/' * 
