# Catherine Nduku - Week 03 Project

A responsive multi-page portfolio website (home, about, projects and contact pages) that I built over Weeks 1 to 3 of the IYF course. This week I learned the command line and the Git and GitHub workflow, and I used them to manage this project with branches, merges and a clear commit history.

## Live Demo

[View Live Site](https://ndush-gif.github.io/iyf-s12-week-03-Ndush-gif/)

## Screenshot

![Home page of my portfolio](./images/screenshot.png)

## Features

- ✅ Responsive layout with a mobile hamburger menu and a horizontal menu from 768px up
- ✅ Four pages: home, about, projects and contact, with a shared navigation bar
- ✅ Flexbox and CSS Grid layouts, including a responsive projects grid
- ✅ Semantic HTML, labelled form fields, image alt text and visible keyboard focus styles
- ✅ Contact form with built-in browser validation (front end only, it does not send messages)
- ✅ Colors and font sizes kept in CSS variables

## Technologies Used

- HTML5
- CSS3 (variables, Flexbox, Grid, media queries)
- Git and GitHub
- Git Bash (command line)
- GitHub Pages

## Project Structure

```
iyf-s12-week-03-Ndush-gif/
├── index.html
├── about.html
├── projects.html
├── contact.html
├── style.css
├── box-model-practice.html
├── flexbox-practice.html
├── grid-practice.html
├── new-project.sh
├── terminal-log.md
├── .gitignore
├── README.md
└── images/
```

## What I Learned

- How to move around and manage files with the terminal: `cd`, `ls`, `mkdir -p`, `cp`, `mv` and `rm`, and how `rm -r` deletes without a recycle bin.
- How to search with `find`, `grep`, `head`, `tail` and `wc`, and how to write a small shell script (`new-project.sh`) that builds a project folder.
- The Git cycle of `add`, `commit` and `push`, how to write commit messages in the `Type: description` format, and how a branch is just a label that points at a commit.
- How `git fetch` downloads changes without touching my files, while `git pull` fetches and then merges.
- How `.gitignore` keeps files such as logs and temporary files out of the repo, and that it only affects files Git is not already tracking.

## Challenges Faced

- **Merge conflict in `about.html`:** I made two branches that each rewrote the "My background" paragraph. Version A said "I'm learning web development at IYF Academy and enjoy building responsive websites." Version B said "I am a beginner developer who likes making clean, accessible pages." Merging A went through, but merging B stopped with a conflict. I opened the file, read the `<<<<<<<`, `=======` and `>>>>>>>` markers, wrote one sentence that kept parts of both versions, removed the markers, checked the page, and committed the merge.
- **Two computers:** my work was on two PCs, so my copies drifted apart and I had to pull before starting and check `pwd` before running commands.
- **Terminal slips:** an unclosed quote in a commit message trapped me in a `>` prompt until I cancelled it with `Ctrl + C`, and pasted commands sometimes got extra characters, so I learned to type them by hand.

## Future Improvements

- [ ] Add JavaScript interactivity
- [ ] Connect the contact form to a service that actually receives messages
- [ ] Add a dark mode

## Contact

- Email: ndukucatherine211@gmail.com
- GitHub: [@Ndush-gif](https://github.com/Ndush-gif)
