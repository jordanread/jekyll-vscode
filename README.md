## jekyll-vscode — Quick start (Open in container and create a new Jekyll site)

Prerequisites
- VS Code
- Docker (running)
- Remote - Containers extension (or "Dev Containers") installed in VS Code

Steps

1. Open the repository in VS Code
- Clone or download this repo to your machine.
- In VS Code choose File > Open Folder... and open the repository folder.

2. Open the folder in a dev container
- Press F1 and run: Remote-Containers: Open Folder in Container...
- Select the repository folder when prompted.
- Wait for VS Code to build the container and reopen the workspace inside it.

3. Open a terminal inside the container
- In the containerized workspace, open a terminal: Terminal > New Terminal (or Ctrl+`)
- Confirm you are inside the container by running:
  ```
  uname -a
  ```
  or
  ```
  echo $DEVCONTAINER
  ```
  (You should see output from the container environment.)

4. Create a new Jekyll site
- From the container terminal, run:
  ```
  jekyll new --force .
  ```
  (This creates a new jekyll site in the root of your repository.)

5. The dev container is already listening and serving output to localhost:4000

- In VS Code's Ports view (or your terminal output) note the port Jekyll is serving on (default 4000). Open http://localhost:4000 (or the forwarded port shown) in your host browser.

Notes and tips
- Files created inside the container (like my-site) persist in the repository workspace on your machine.

- If you encounter permission or bundler issues, try `gem install bundler` then `bundle install` from the container terminal.

Commands summary
```
# open in container via VS Code UI (Remote-Containers)
# in container terminal:
jekyll new --force .
# open http://localhost:4000 on host
```

