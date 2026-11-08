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

## 6.1 Git Basics

### Setup
- `git config --global --list` — showed `user.name=Catherine Nduku` and `user.email=ndukucatherine211@gmail.com`. My first attempt failed because I typed the command twice on one line (`--listgit`), so I retyped it.

### Practice repo (`~/git-practice`)
- `git init` — created an empty repository.
- `touch index.html style.css` then `git status` — the files showed as untracked.
- `git add ..` — failed with `fatal: '..' is outside repository`, because `..` is the folder above. I used `git add .` instead.
- `git commit -m "Add: initial portfolio structure"` — made the first commit (2 files changed).
- `git log` — showed my commit with my name and email.
- `git pull origin main` — failed because the practice repo has no remote called `origin`.

### Commits in my week-03 repo

## 6.2 Branching and Merging

### Exercise 1: Create and use branches
- View current branches: git branch
- Create new branch: git branch feature/contact-form
- Switch to new branch: git checkout feature/contact-form
- OR (newer syntax): git switch feature/contact-form
- Create and switch in one command: git checkout -b feature/new-header

### Exercise 2: Branch workflow
- I created `feature/about-page`, changed the skills list in `about.html` (commit `6789cea` "Update: skills list to include Command Line"), and merged it into `main` (commit `7eb8126` "Update: merge about page changes").

### Exercise 3: Merge conflict
- Created two branches from `main`, `feature/about-intro-a` and `feature/about-intro-b`, and changed the same paragraph in `about.html` on each. Version A was commit `cca0853`, and version B was commit `cd1e451`.
- `git switch main`, then `git merge --no-ff feature/about-intro-a -m "Update: merge about intro version A"` — this went through cleanly ("Merge made by the 'ort' strategy").
- `git merge feature/about-intro-b` — printed `CONFLICT (content): Merge conflict in about.html` and `Automatic merge failed`. My prompt changed to `(main|MERGING)`.
- `git status` — listed `about.html` under "Unmerged paths" as `both modified`.
- I opened `about.html`, edited the paragraph to one sentence, removed the conflict markers, and committed. The merge commit is `956f5c0`.
- `grep -n "<<<<<<<\|=======\|>>>>>>>" about.html` — printed nothing, so no markers were left.
- `git branch -d feature/about-intro-a feature/about-intro-b` — deleted both merged branches.
- `git push origin --delete feature/about-intro-a feature/about-intro-b feature/about-page` — deleted them on GitHub too.
- `git rm tyle.css` — removed a misspelled copy of my stylesheet. `ls` no longer showed it.

### Mistakes and what I learned
- I started a commit message with a quote and never closed it, so the terminal showed `>` and swallowed my next commands. I pressed `Ctrl + C` to cancel and retyped it on one line.
- `git log --graph` opened a pager that I could not leave until I pressed `q`.
- I typed two commands on one line, such as `git config --global --listgit config ...`, and Git rejected them.
- I have two copies of the repo on two computers, so I ran `git pull` before working to keep them in step.

## 6.3 GitHub Remote Workflow

### Exercise 1: Push to GitHub
- `git remote -v` — showed `origin` pointing at `https://github.com/Ndush-gif/iyf-s12-week-03-Ndush-gif.git` for both fetch and push, so my repo was already connected to GitHub.
- `git push -u origin main` — printed `branch 'main' set up to track 'origin/main'` and `Everything up-to-date`, because I had already pushed everything.

### Exercise 2: Collaboration simulation
- `cd ~` then `git clone https://github.com/Ndush-gif/iyf-s12-week-03-Ndush-gif.git week03-clone` — cloned my repo into a separate folder to pretend to be a second computer.
- `touch .gitignore` then `git status` — the new file showed as untracked.
- `git add .gitignore` then `git commit -m "Add: gitignore file"` — made commit `22f249a` (1 file changed, 14 insertions).
- `git push origin main` — pushed it to GitHub (`2d7f1e5..22f249a  main -> main`).
- Back in my original repo, `git fetch origin` printed nothing. Then `git status` said `Your branch is behind 'origin/main' by 1 commit, and can be fast-forwarded`. This showed me that fetch downloads the new commit but does not change my files.
- `git pull origin main` — TODO: it printed `Already up to date.`, but `ls -a` then showed `.gitignore`. Say honestly what I think happened (for example, VS Code may have synced in the background), or that I am not sure.
- `ls -a` — showed the hidden file `.gitignore` among my files.

### Exercise 3: .gitignore
- `touch debug.log notes.tmp` then `git status` — printed `nothing to commit, working tree clean`, so neither file was listed.
- `git check-ignore -v debug.log` — printed `.gitignore:13:*.log     debug.log`, showing that line 13 of my `.gitignore` is the rule that ignores it.
- `rm debug.log notes.tmp` — deleted the two test files.

### Mistakes and what I learned
- I pasted a `cd` command and the terminal added extra characters, giving `bash: [200~cd: command not found`. I typed it by hand instead.
- `rm -r week03-clone` asked about every write-protected file in the `.git` folder. TODO: add what I did (for example, cancelled with `Ctrl + C` and used `rm -rf` after checking `pwd`).

## Daily Challenge 1: Terminal-Only Project Setup

- `cd ~/terminal-practice` then `pwd` — printed `/c/Users/PC/terminal-practice`, so I worked in my scratch folder and not in my repo.
- `mkdir -p daily-challenge-1/src/css daily-challenge-1/src/js` — meant to create the folders. I accidentally typed the command twice on one line, so it also created a stray empty folder called `jsmkdir`.
- `touch daily-challenge-1/src/index.html daily-challenge-1/src/css/style.css daily-challenge-1/src/js/app.js daily-challenge-1/README.md` — created the four empty files in one command.
- `echo "# daily-challenge-1" > daily-challenge-1/README.md` — wrote a title into the README without opening an editor.
- `echo "<h1>Hello from the terminal</h1>" > daily-challenge-1/src/index.html` — wrote a line into the HTML file.
- `ls -R daily-challenge-1` — listed the whole tree and showed the stray `jsmkdir/` folder.
- `rmdir daily-challenge-1/src/jsmkdir` — TODO: removed the stray empty folder. Say what `ls -R` showed afterwards.
- `find daily-challenge-1 -type f` — listed exactly four files: `README.md`, `src/css/style.css`, `src/index.html` and `src/js/app.js`.
- `cat daily-challenge-1/README.md` and `cat daily-challenge-1/src/index.html` — printed `# daily-challenge-1` and `<h1>Hello from the terminal</h1>`.

### What I learned
- `rmdir` only deletes empty folders, or that typing a command twice on one line turns the second copy into extra arguments.
## Daily Challenge 1: Terminal-Only Project Setup

- `cd ~/terminal-practice` then `pwd` — printed `/c/Users/PC/terminal-practice`, so I worked in my scratch folder and not in my repo.
- `mkdir -p daily-challenge-1/src/css daily-challenge-1/src/js` — meant to create the folders, but I typed the command twice on one line, so it also created a stray empty folder called `jsmkdir`.
- `touch daily-challenge-1/src/index.html daily-challenge-1/src/css/style.css daily-challenge-1/src/js/app.js daily-challenge-1/README.md` — created the four empty files.
- `echo "# daily-challenge-1" > daily-challenge-1/README.md` and `echo "<h1>Hello from the terminal</h1>" > daily-challenge-1/src/index.html` — wrote one line into each file without an editor.
- `find daily-challenge-1 -type f` — listed exactly four files.
- `cat daily-challenge-1/README.md` and `cat daily-challenge-1/src/index.html` — printed `# daily-challenge-1` and `<h1>Hello from the terminal</h1>`.
- `rmdir daily-challenge-1/src/jsmkdir` — removed the stray empty folder. `ls -R daily-challenge-1` then showed only `css/`, `index.html` and `js/` inside `src`, matching the target structure.
- What I learned: TODO

## Daily Challenge 2: Find Command Mastery

1. **Find all CSS files**
   - `find . -name "*.css"` — printed one file, `./style.css`.
2. **Find files modified in the last 7 days**
   - `find . -type f -mtime -7 -not -path "./.git/*"` — listed 8 files: `.gitignore`, `about.html`, `images/Screenshots/myportfolio.png`, `index.html`, `new-project.sh`, `README.md`, `style.css` and `terminal-log.md`. I excluded the `.git` folder because its files change with every commit.
3. **Search for "flex" in all CSS files**
   - `grep -rn "flex" --include="*.css" .` — printed 8 lines, from `style.css` lines 82, 83, 128, 136, 146, 147, 283 and 296.
   - `grep -rn "flex" --include="*.css" . | wc -l` — printed `8`.
   - Six of the lines are flex properties (`display: flex`, `flex-wrap`, `flex-direction`), and two (lines 283 and 296) are the class name `.flex-card`, which matches because the word "flex" is part of it.
4. **Count "div" in my HTML files**
   - `grep -o "div" *.html | wc -l` — printed `29` (every occurrence).
   - `grep -c "div" *.html` — counted lines per file: `about.html` 0, `box-model-practice.html` 3, `contact.html` 2, `flexbox-practice.html` 15, `grid-practice.html` 4, `index.html` 2 and `projects.html` 2. That adds up to 28 lines, one fewer than 29 occurrences, so one line has "div" twice.

### What I learned
- I learned how to find a specific file using the `find . -name "*"` command, how to find modified  e.g within 7 days (`find . -type f -mtime -7 -not -path "./.git/*"`), how to search a specific word like flex in css (`grep -rn "flex" --include="*.css" .`) and how to count times an element appears in a specific file eg `div` in html file(`grep -o "div" *.html | wc -l` ).