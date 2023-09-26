### About
This repository is meant to provide you with an easy way to start a TypeScript project in Node.js.

It will install the latest, most commonly used packages for linting, formatting, testing, and more.

The repository also includes things like a Dockerfile, a code quality GitHub action, and a debugger configuration for Visual Studio Code...

If you feel that something is outdated or can be improved, please feel free to open a pull request.

### How to use

- clone the repository
- run the `main.sh` and provide the folder name argument
- it is recommended that you create alias. In yours .zshrc/.bashrc/.*rc add the following line: `alias typescript-boilerplate="sh ~/typescript-boilerplate/main.sh"` (change path if necessary)

### Example
Running the following command will create new folder in it and install the boilerplate:

`./typescript-boilerplate/main.sh my-new-project`