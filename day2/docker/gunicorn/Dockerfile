FROM ubuntu:latest

# Set environment variables
ENV HOME_DIR="/opt/docker-sample"
ENV FLASK_APP="app.py"

# Install base packages
RUN apt-get update && apt-get install -y apt-utils python3-pip git

# Install flask
RUN pip3 install flask pyyaml gunicorn
COPY ./source ${HOME_DIR}

# Setting flask 
ADD flask.conf ${HOME_DIR}/flask.conf

WORKDIR ${HOME_DIR}

# Expose & Run flask server
EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/gunicorn", "app:app"]
CMD ["-b", "0.0.0.0:5000"]
