for f in *.jpg;do mv -n --  "$f" "$(date -r "$f" +”%Y%m%d_%H%M%S”).png”;done
