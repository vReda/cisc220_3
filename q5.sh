#!/bin/bash

#Vanessa Reda 10194381

find . -type f -executable -print | xargs grep "#!/bin/bash" | sed -i '/bash/ a\ #Developed in CISC220 ' 






