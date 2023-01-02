useradd -p $(openssl passwd -1 ) cups

adduser cups lp 

adduser cups lpadmin

cupsctl --remote-any