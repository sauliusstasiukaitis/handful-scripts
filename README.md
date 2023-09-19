Handful scripts
===============

Scripts that are useful for my daily work

# Delete branched that has no remote

Delete branched that has no remote etc. already merged to main branch.

Run:

        cd PROJECT
        PATH_TOP_HANDFUL_SCRIPTS/clean_dead_branches.sh

# Install PPH version

        cd PATH_TOP_HANDFUL_SCRIPTS
        ./install_php_version.sh 8.0

# Switch between PHP versions

        cd PATH_TOP_HANDFUL_SCRIPTS
        ./switch_php_version.sh 8.0 7.4

## Troubleshoot

If switch ends up in a wrong version etc. 7.3 

Run:

        brew unlink php && brew link PHP

# Related

- https://github.com/TransferGo/msg-tool
