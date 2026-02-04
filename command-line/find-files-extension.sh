find . -type f -iregex '.*\.\(txt\)' | cut -d '.' -f2 | cut -d '/' -f3
