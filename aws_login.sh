profile=$1

if [ -z "$profile" ]
then
    echo "Please provide a profile name"
    exit 1
fi

aws sso login --profile $profile
