#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=peridoic_table -t --no-align -c"
echo Please provide an element as an argument.
read arg
if [[