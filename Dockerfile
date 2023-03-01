FROM python:3.11.2-slim
RUN apt-get update && \
    apt-get install -y \
    bash curl jq \
    && rm -rf /var/lib/apt/lists/*
RUN pip install requests
ENTRYPOINT ["/bin/bash"]