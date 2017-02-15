find . -name '*.txt' -exec rename -nv -- 's|/(.*)/(.*)$|/$1/$N-$1.txt|' {} +

