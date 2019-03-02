tmpbg="/home/sham.kazemi-joestani/afs/img/batman.png"

scrot "$tmpbg"
convert "$tmpbg" -spread 10 -negate -swirl 9000  "$tmpbg"
i3lock -e -i "$tmpbg"
rm "$tmpbg"
