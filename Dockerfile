FROM nvidia/cuda:12.2.0-base-ubuntu22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip git curl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install Python dependencies (adjust if NodeHood has requirements.txt)
RUN pip3 install --no-cache-dir -r requirements.txt || true

# Default command
CMD ["bash"]
