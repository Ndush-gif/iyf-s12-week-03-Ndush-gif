# Terminal Log

## 5.1 Terminal Navigation

### Exercise 1: Basic Navigation
- `pwd` — shows `/c/Users/PC`, the folder I am in.
- `ls` — lists the contents of the current directory, for example:
  ```
  OneDrive/  Pictures/  PrintHood@  Recent@  'Saved Games'/  Searches/
  SendTo@  'Start Menu'@  Templates@  terminal-practice/  Videos/
  ```
- `cd ~/Documents` — goes to my Documents folder.
- `cd ..` — goes one directory back.
- `cd ~` — goes to the home directory.
- `cd ~/terminal-practice` then `pwd` — shows `/c/Users/PC/terminal-practice`.

### Exercise 2: Creating Project Structure
- `mkdir -p my-project/src/css my-project/src/js my-project/src/images my-project/docs my-project/tests` — created the whole folder tree, including parent folders.
- `touch my-project/README.md` — created an empty file.
- `ls -R my-project` — listed everything inside, including subfolders.

## 5.2 File Operations

### Exercise 1: Create and Edit Files
- `touch index.html` — created a new file. `ls` showed `docs/  index.html  README.md  src/  tests/`.
- `cat index.html` — printed nothing, because the file is empty.
- `cp index.html backup.html` — made a copy. `ls` showed `backup.html  docs/  index.html  README.md  src/  tests/`.
- `mv backup.html docs/` — moved the copy into the docs folder. `ls` no longer showed it, and `ls docs` showed `backup.html`.
- `mv index.html home.html` — renamed `index.html` to `home.html`.
- `rm home.html` — deleted the file. `ls` showed `docs/  README.md  src/  tests/`.

### Exercise 2: Working with Directories
- `cp -r src/ src-backup/` — copied a whole folder. `ls` showed `docs/  README.md  src/  src-backup/  tests/`.
- `mv src-backup/ archive/` — renamed the folder. `ls` showed `archive/  docs/  README.md  src/  tests/`.
- `rmdir archive/` — failed with `rmdir: failed to remove 'archive/': Directory not empty`, because the archive still held the copied folders.
- `rm -r archive/` — deleted the folder and everything inside it. `ls` showed `docs/  README.md  src/  tests/`.

## Mistakes and what I learned
- I ran `cp -r src/ src-backup/` inside my repo on a different PC (the earlier work was on my work computer). There was no `src` folder there, so it failed. I should have checked `pwd` first. I rebuilt the practice folder in `~/terminal-practice` and ran the commands there. `pwd` showed `/c/Users/PC/terminal-practice`.

## Task 5.3: Useful Terminal Commands

1. How many HTML files are in your portfolio project?
 - Command: `find . -name "*.html" | wc -l`
 - Result: 7
2. Which files contain the word "contact"?
- command: `grep -rli "contact" . --include="*.html" --include="*.css"`
- Result: 
``` 
./about.html ./contact.html ./flexbox-practice.html ./index.html ./projects.html ./style.css

```
3. How many lines is your CSS file?
- Command: `wc -l style.css`
- Result: `321 style.css`

4. What were your last 10 terminal commands?
- Command: `history | tail -n 10`
- Result:  
   - 78  tail -10 style.css
   - 79  wc index.html
   - 80  find . -name "*.html" | wc -l
   - 81  grep -rli "contact" . --include="*.html" --include="*.css"
   - 82  wc -l style.css
   - 83  history | tail -n 10
   - 84  find . -name "*.html" | wc -l
   - 85  grep -rli "contact" . --include="*.html" --include="*.css"
   - 86  wc -l style.css
   - 87  history | tail -n 10
   