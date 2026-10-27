FROM python:3.10-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg libsm6 libxext6 libgl1 unzip && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]