FROM python:3.7.3

LABEL author="Sep0lkit <sep0lkit@gmail.com>"
LABEL repository="https://github.com/Sep0lkit/git-issues-blog"

LABEL com.github.actions.name="git-issues-blog"
LABEL com.github.actions.description="Auto build issues blog from github repo"
LABEL com.github.actions.icon="file-text"
LABEL com.github.actions.color="orange"

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
RUN apt-get install -y git

COPY git-issues-blog.py /git-issues-blog.py
RUN chmod +x /git-issues-blog.py
ENTRYPOINT [ "/git-issues-blog.py" ]
