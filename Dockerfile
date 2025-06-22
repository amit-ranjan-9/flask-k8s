# 1. Base image: slim Python
FROM python:3.9-slim

# 2. Set working folder
WORKDIR /app

# 3. Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy app code
COPY app.py .

# 5. Flask settings
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 8080

# 6. Start the app
#CMD ["flask", "run", "--port=8080"]
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
