dbName=$1


rs=$(dig +short $dbName CNAME | sed 's/\.$//')
echo $rs
