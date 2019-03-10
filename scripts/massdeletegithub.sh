#!/bin/sh
 
# Delete a bunch of GitHub repos
nukem="repo1 repo2 repo3"
user="kkshmz"
password_or_oauth_token="deadbeefdeadbeef"
 
for repo in $nukem do
    echo "Ixnay on the eporay! https://github.com/$user/$repo"
    curl -v -u "$user:$password_or_oauth_token" -X DELETE \
       "https://api.github.com/$user/$repo"
done