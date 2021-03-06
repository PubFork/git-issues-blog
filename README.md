# Git-Issues-Blog (Github-Action)
[![GitHub Marketplace](https://img.shields.io/badge/marketplace-Git--Issues--Blog-green.svg?colorA=24292e&colorB=0366d6&style=flat&longCache=true&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAM6wAADOsB5dZE0gAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAERSURBVCiRhZG/SsMxFEZPfsVJ61jbxaF0cRQRcRJ9hlYn30IHN/+9iquDCOIsblIrOjqKgy5aKoJQj4O3EEtbPwhJbr6Te28CmdSKeqzeqr0YbfVIrTBKakvtOl5dtTkK+v4HfA9PEyBFCY9AGVgCBLaBp1jPAyfAJ/AAdIEG0dNAiyP7+K1qIfMdonZic6+WJoBJvQlvuwDqcXadUuqPA1NKAlexbRTAIMvMOCjTbMwl1LtI/6KWJ5Q6rT6Ht1MA58AX8Apcqqt5r2qhrgAXQC3CZ6i1+KMd9TRu3MvA3aH/fFPnBodb6oe6HM8+lYHrGdRXW8M9bMZtPXUji69lmf5Cmamq7quNLFZXD9Rq7v0Bpc1o/tp0fisAAAAASUVORK5CYII=)](https://github.com/marketplace/actions/git-issues-blog)

A Github action to create issues from github repository.

I use this action for my blog system,  make me more focused on writing.

## **Features:**

- **WYWIWYG**(What You Write Is What You Get)
- Based on github file content 
- Automatically generate and update issues
- Template support
- Automatic conversion image link
- Easy to using

## Example:

​	**Issues:** [Thanks-for-using.md](https://github.com/Sep0lkit/git-issues-blog/issues/6)

## Usage:

```yaml
name: git issues blog workflow

on: 
  push:
    branches:
      - master
    paths:
      - 'posts/*.md'
      - 'posts/*/*.md'
      - 'posts/*/*/*.md'


jobs:
  git-issues-blog:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
      with:
        ref: master
    - name: Git-Issues-Blog
      uses: Sep0lkit/git-issues-blog@v1.3
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        POSTS_PATH: 'posts'
      
```

#### Environment variables
- `POSTS_PATH` - blog posts folder name, default is "posts"

#### Issues templates

"_tpl/post-header.md" and "_tpl/post-footer.md" for templates, issues content will be:

​    <u>**Issues = post-header.md + posts/example.md + post-footer.md**</u>

> tpl variables support:
>
> {{ GITHUB_POSTS_USER }}		  #github repository username
>
> {{ GITHUB_POSTS_URL }}			#posts url in file but not issues.



## Something to do:

- [ ] Posts by github user,  but not github-action(github actions doesn't support now).

