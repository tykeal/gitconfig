This is the gitconfig that I use across my various systems. It's open and
public to help serve as inspiration for others. I've been using this for a few
years now and it's been working well for me. I hope it can help you too.

This setup expects the following basic setup:

* Symlink dot-gitconfig into ~/.gitconfig
* You should have your repo clones in a sane top level directory
* Gerrit based repos should be have a directory called "gerrit" as part of
  their path
* Clone repositories with `git get` instead of `git clone` as it will then use
  the appropriate git template to setup gerrit hooks as well as pre-commit. By
  default a non-gerrit repo will be configured which then sets up the
  pre-commit hook.

For example, my directory structure looks something like this:

```
~/.gitconfig.d  # This repo
~/.gitconfig -> ~/.gitconfig.d/dot-gitconfig
~/repos/
  gerrit/
    project1/
    project2/
    major-project/
      project5/
      project6/
  github/
    project3/
    project4/
    major-project/
      project7/
      project8/
  major-project/
    gerrit -> ../gerrit/major-project
    github -> ../github/major-project
```

Now, when I want to clone a repo I go into the appropriate location and just
use `git get $REPO_URL` and it will clone the repo and setup the hooks as
needed.
