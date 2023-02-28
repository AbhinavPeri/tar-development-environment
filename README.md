# development-environment

This document outlines how to use this repo to set up the development environment. It *should* work for every OS, but it's only been tested on Windows. 

The alternative way to doing this is installing Ubuntu and ROS directly, which is a lot more involved. This is definitely easier, but has more limitations. 

You should fork this repo so you can edit the `Dockerfile` to include whatever packages/libraries/repos you need for your project. If there's anything you think everyone should have in their environment, feel free to open a PR to this repo!

## Things to install

- **Docker** - Follow the [Docker installation instructions](https://docs.docker.com/get-docker/) for your OS. Make sure it's installed properly by running `docker` in your terminal. 

- **VS Code** - Even if you normally use a different IDE, this development environment *requires* VS Code + the following two extensions:
    - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) - Allows you to open this repo in a development container (as defined in [`Dockerfile`](../Dockerfile) and [`.devcontainer`](../.devcontainer/devcontainer.json)) without having to build or pull the Docker image from anywhere yourself. Super handy because you can then use all of VS Code's features normally (including whatever other extensions you normally use). This is the main reason we're using VS Code, though if you're familiar with any other IDE that has this kind of functionality, feel free to use that instead. 
    - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) 

## Using the Development Environment

1. Open this repo in VS Code (either with **File** -> **Open Folder** or `code <folder>` on the command line)

2. On the bottom left hand corner under the settings button, click the box with the two arrows opposing each other 

3. Select **Reopen in Container** in the list of options that pops up. The first time you do this, it will take a while because it has to pull the base Docker image down. It'll open pretty fast after the first time. You'll know it's worked once the bottom left corner says **Dev Container: Brooklyn Project** and the terminal pops up with `root` as the user.

Good job! You are now developing on a fully fledged ROS + Ubuntu 20.04 container. This is the software stack that'll be running on the Raspberry Pi, so hopefully anything that works in here will work on there.

## More setup in your dev container (only needs to be done once)

You do need to configure a couple of things before you can make any `git` commits. Just run the following two lines with your information.

```
git config --global user.name "firstName lastName"
git config --global user.email "email tied to your github account"
```

Also, I ran into this weird bug (guessing it's some weird windows thing) where my files were all shown as modified in `git` even though I didn't change anything. It turns out it's something dumb with the new line characters being different between the OS's. If you see this (either in VS Code or by running `git diff`), I fixed it with the following command, though [some people](https://stackoverflow.com/questions/62724723/git-in-visual-studio-code-says-file-is-modified-even-when-there-is-no-change) say that they fixed it by setting it to `false` lol. 

```
git config --global core.autocrlf true
```

## What's next?

Go through all the beginner tutorials [here](https://wiki.ros.org/ROS/Tutorials).