if [ -z "$1" ]
then
    echo "Please provide part of branch name to delete"
    exit 1
fi

branchesToDelete=$1

git branch | grep $branchesToDelete | xargs git branch -d
