# Specify the parent image from which we build
FROM python:3.10

# Set the working directory
WORKDIR /LLM_application_chatbot

# This copies the requirements.txt file from the local directory to the current directory (.) in the container
COPY requirements.txt .

# Install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# Copying every content from the local file to the image
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
