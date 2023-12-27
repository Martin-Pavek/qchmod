#!/usr/bin/bash

# prochazeni pole argumentu, nejdukladnejsi co bylo k nalezeni na internetu
# pokud by nekomu nevyhovoval shift, tak si muze nahradit za toto

#set -- "a" "b" "c"
# toto pak nahradit v terminalu za $1 $2 $3 atd.


args=("$@")
elements=${#args[@]}

for (( arg = 0; arg <= $elements-1; arg++ )); do
echo ${args[${arg}]}
done

