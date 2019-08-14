FROM ubuntu:18.04
RUN apt-get -y update && \
    apt-get -y install python-pip python-dev curl gnupg && \
    apt-get install -y nodejs npm && \
    mkdir -p /opt/flask-app
WORKDIR /opt/flask-app
COPY flask-app .
RUN npm install && \
    npm run build && \
    pip install -r requirements.txt && \
    apt-get clean autoclean && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 5000
CMD ["python","./app.py"]