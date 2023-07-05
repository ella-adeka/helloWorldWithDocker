# use latest python package as base image
FROM python:latest

# use package directory as default location for subsequent commands
# WORKDIR /package

# copy requirements.txt file into the wd /package
COPY . .

# with requirements.txt inside the image, get pip and install dependencies in requirements.txt
# RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && pip install -r requirements.txt
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# copy all files located in current directory and copy them into the image
# COPY . .

CMD [ "python", "hello_world.py"  ]