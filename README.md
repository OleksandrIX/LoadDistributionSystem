# EducationDepartmentWebsite

This is the main repository and it includes several submodules.

## Add a Git Submodule

In order to add a Git submodule, use the “git submodule add” command and specify the URL of the Git remote repository to be included as a submodule.

#### `git submodule add <remote_url> <destination_folder>`

When adding a Git submodule, your submodule will be staged. As a consequence, you will need to commit your submodule by using the “git commit” command.

#### `git commit -m "Added the submodule to the project."`
#### `git push`

## Pull a Git Submodule

To pull a Git submodule, use the following command:

#### `git submodule update --init --recursive`

## Update a Git Submodule

To update a Git submodule, use the following command:

#### `git submodule update --remote --merge`

