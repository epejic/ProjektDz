#!/bin/bash
var=$(basename -- "$0" | rev)
tac cetvrti.sh > $var
