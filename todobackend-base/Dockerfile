FROM ubuntu:trusty
MAINTAINER Chris Carty <chriscartydev@gmail.com>

# Prevent dpkg errors
ENV TERM=xterm-256color

# Install Python
RUN apt-get update && \
	apt-get install -y \
	-o APT::Install-Recommend=false -o APT::Install-Suggests=false \
	python python-virtualenv libpython2.7 python-mysqldb

# Activate Pyenv
RUN virtualenv /appenv && \
	. /appenv/bin/activate && \
	pip install pip --upgrade

# Add entrypoint
COPY scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

LABEL application=todobackend