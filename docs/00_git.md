# Git

Configure your users in order to use different accounts for work and personal.

create this file:
`/Users/mac/src/weavs.io/.gitconfig`

```
[user]
  name = MyName MySurname
  email = my_user@company.com
```

then in add the following in
`/Users/MY_USER/.gitconfig`

```
[user]
	name = Snake Sanders
	email = elmarian22@gmail.com

# Example for multi-user configuration
# [includeIf "gitdir:~/Private/"]
#     path = ~/Private/.gitconfig

# This is the user I have for Work
[includeIf "gitdir:~/src/WORK_DIR/"]
  path = ~/src/WORK_DIR/.gitconfig
```

To validate the configuration, close vscode, go to the project folder

- Check user name `git config user.name`
- Check user email `git config user.email`
