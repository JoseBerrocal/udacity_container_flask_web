FROM python:3.9.0a4-buster

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . flask_app/hello.py /app/
COPY . nlib /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 5001
EXPOSE 5001

# Run app.py at container launch
CMD ["python", "hello.py"]
