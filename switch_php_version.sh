if_exit=false
if [ -z ${1+x} ]; then echo "Current PHP version should be passed as a first param"; if_exit=true; else echo "Switching from version '$1'"; fi
if [ -z ${2+x} ]; then echo "New PHP version should be passed as a first param"; if_exit=true; else echo "Switching to version '$2'"; fi

if [ true = $if_exit ]; then echo "Exiting"; exit; else echo "Starting ... "; fi

old_php_version=$1
new_php_version=$2

brew unlink php@$old_php_version
brew link php@$new_php_version

export PATH="/usr/local/opt/php@{$new_php_version}/bin:$PATH"
export PATH="/usr/local/opt/php@{$new_php_version}/sbin:$PATH"

echo "Finished. New version:"

php -v
