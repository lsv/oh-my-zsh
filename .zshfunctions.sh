fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

goo() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search" > /dev/null
}

gitlab() {
	git clone git@gitlab.com:$1.git $2
}

github() {
	git clone git@github.com:$1.git $2
}

curl -s --connect-timeout 5 -A '/u/your_user_name' \
'https://www.reddit.com/r/showerthoughts/top.json?sort=top&t=week&limit=100' | \
python2.7 -c 'import sys, random, json; randnum = random.randint(0,99); response = json.load(sys.stdin)["data"]["children"][randnum]["data"]; print "\n\"" + response["title"] + "\""; print "    -" + response["author"] + "\n";'

