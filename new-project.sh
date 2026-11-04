

#!/bin/bash
# Creates a new project with standard structure

PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: ./new-project.sh project-name"
    exit 1
fi

mkdir -p "$PROJECT_NAME"/{src/{css,js,images},docs,tests}
touch "$PROJECT_NAME"/README.md
touch "$PROJECT_NAME"/src/index.html
touch "$PROJECT_NAME"/src/css/styles.css
touch "$PROJECT_NAME"/src/js/main.js

echo "# $PROJECT_NAME" > "$PROJECT_NAME"/README.md
echo "Project $PROJECT_NAME created successfully!"

## 5.4 Shell Script

### Script 1: new-project.sh
- Created `new-project.sh` in my week-03 repo. It takes a project name as `$1` and builds a folder structure.
- `chmod +x new-project.sh` — my first attempt failed with `bash: [200~chmod: command not found`, because extra characters were added when I pasted the command. 
- `cd ~/terminal-practice` then `pwd` — printed `/c/Users/PC/terminal-practice`. I ran the script from my scratch folder, not my repo.
- `bash ".../new-project.sh" my-awesome-app` — printed `Project my-awesome-app created successfully!`
- `ls -R my-awesome-app` — listed the folders it created:
  ```
  my-awesome-app:
  docs/  README.md  src/  tests/

  my-awesome-app/src:
  css/  images/  index.html  js/

  my-awesome-app/src/css:
  styles.css

  my-awesome-app/src/js:
  main.js
  ```
- `cat my-awesome-app/README.md` — printed `# my-awesome-app`, so the script wrote the project name into the README.
- No-name test: TODO: what the script printed when I ran it without a name.
