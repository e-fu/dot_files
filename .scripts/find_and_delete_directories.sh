
find . -name .svn -exec ls '{}' \;
# find and delete only directories, not files:
find . -name node_modules -type d -exec ls {} \;
# find . -name .svn -exec rm -rf '{}' \;
# find . -name node_modules -type d -exec rm -rf {} \;
