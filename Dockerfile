FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the AI project files into the container
COPY . .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Install curl
RUN apt-get update && apt-get install -y curl

# Expose the port that the AI runs on
EXPOSE 5000

# Define the command to run the AI application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]