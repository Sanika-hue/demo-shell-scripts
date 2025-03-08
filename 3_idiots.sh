#!/bin/bash

hero="rancho"
villian="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villian hai $villian"




# shell / environment variables bhi hote hai (pre-defined variables)


echo "current logged in user $USER"

# user input 

read -p "Rancho ka pura nam kya tha ? " fullname

echo "rancho ka pura nam $fullname tha"

# arguments


# ./3_idiots.sh raju farhan rancho


echo "movie ka nam: $0"

echo "first idiot $1"

echo "second idiot $2"

echo "third idiot $3"

echo "the total number of idiots: $#"

echo "Hence the 3 idiots are $@"

