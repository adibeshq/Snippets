## Mirgration of the repo
* git clone --mirror: to clone every references (commits, tags, branches)
* git push --mirror: to push everything

```
git clone --mirror https://bitbucket.org/exampleuser/repository-to-mirror.git
# Make a bare mirrored clone of the repository

cd repository-to-mirror.git
git remote set-url --push origin https://github.com/exampleuser/mirrored
# Set the push location to your mirror

git push --mirror
```

## Store credential

```
git config --global credential.helper store
```
