# csci3081-devcontainer

Here is my setup to run the csci3081 class code in a VSCode Dev Container.
1. Put the devcontiner.json and the Dockerfile into a .devcontainer directory
2. For the clangd extension to find your header files, run 'bear -- make' any time there are new files. Any other scenario run 'make' like normal.
3. I'm working on creating CMake files for this class which would simplify the process further.
