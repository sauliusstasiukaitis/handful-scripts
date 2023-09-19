find /usr/share/doc -type f -name copyright -exec grep "License\:" {} + | cut -f3 -d: | sort -u
