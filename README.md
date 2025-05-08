# **docker build Dockerfile -t deypadma/my-simple-webapp**

---

## Layer 1: Base Ubuntu Layer [120 MB]

```bash
FROM Ubuntu
```

## Layer 2: Changes in apt packages[306 MB]
```bash
RUN apt-get update && apt-get -y install python
```

## Layer 3: Changes in pip packages[6.3 MB]
```bash
RUN pip install flask flask-mysql
```

## Layer 4: Source code[229 B]
```bash
COPY .
```

## Layer 5: Update Entrypoint with "flask" command[0 B]
```bash
entrypoint FLASK_APP=app.py flask run
```

---

# Simple Web Application

This is a simple web application using [Python Flask](http://flask.pocoo.org/) and [MySQL](https://www.mysql.com/) database. 
This is used in the demonstration of the development of Ansible Playbooks.
  
  Below are the steps required to get this working on a base linux system.
  
  - **Install all required dependencies**
  - **Install and Configure Web Server**
  - **Start Web Server**
   
## 1. Install all required dependencies
  
  Python and its dependencies
  ```bash
  apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip default-libmysqlclient-dev
  ```
   
## 2. Install and Configure Web Server

Install Python Flask dependency
```bash
pip3 install flask
pip3 install flask-mysql
```

- Copy `app.py` or download it from a source repository
- Configure database credentials and parameters 

## 3. Start Web Server

Start web server
```bash
FLASK_APP=app.py flask run --host=0.0.0.0
```

## 4. Test

Open a browser and go to URL
```
http://<IP>:5000                            => Welcome
http://<IP>:5000/how%20are%20you            => I am good, how about you?
```