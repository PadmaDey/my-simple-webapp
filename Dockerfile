### Start from a base OS or another image
# 1. OS - Ubuntu 
FROM Ubuntu

### Install all dependencies
# 2. Update apt repo
RUN apt-get update

# 3. Install dependencies using pip
RUN apt-get install python

# 4. Install Python dependencies using pip
RUN pip install flask
RUN pip install flask-mysql

### Copy source code
# 5. Copy source code to /opt folder
COPY .

### Specify Entrypoint
# 6. Run the web server using "flask" command
ENTRYPOINT FLASK_APP=app.py flask run 


# # 7. it will create an Docker image of my-custom-app 
# docker build Dockerfile -t padma/my-custom-app

# # 8. this will push and publicly available of my Docker image
# docker push padma/my-custom-app
