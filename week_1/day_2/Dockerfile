# 1. Use an official Python runtime as the base image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy the dependency file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the application code into the container
COPY . .

# 5. Inform Docker that the container listens on port 5000
EXPOSE 5000

# 6. Define the command to run the application when the container starts
CMD ["python", "app.py"]
