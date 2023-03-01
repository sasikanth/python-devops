FROM python:3.11.2-slim
RUN apt-get update && \
    apt-get install -y \
    bash curl jq \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install -r requirements.txt
ENTRYPOINT ["/bin/bash"]