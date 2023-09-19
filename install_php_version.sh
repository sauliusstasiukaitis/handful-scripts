if [ -z ${1+x} ]; then echo "PHP version should be passed as a first param"; exit; else echo "Switching to version '$1'"; fi

php_version=$1

brew install php@$php_version
brew link --force --overwrite php@$php_version
brew services start php@$php_version
export PATH="/usr/local/opt/php@{$php_version}/bin:$PATH"
export PATH="/usr/local/opt/php@{$php_version}/sbin:$PATH"

echo php -v
