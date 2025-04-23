FROM ubuntu:25.04

# INSTALL DEPENDENCIES
RUN apt-get update && \
    apt-get install -y \
    tar \
    curl \
    dotnet-runtime-8.0 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# SET USER AND RUNNER
RUN useradd -m gitaction
RUN mkdir -p /home/gitaction
WORKDIR /home/gitaction/actions-runner
RUN curl -o actions-runner-linux-x64-2.323.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.323.0/actions-runner-linux-x64-2.323.0.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.323.0.tar.gz
COPY . .
RUN chown gitaction /home/gitaction/actions-runner -R

# SET VOLUME
VOLUME /home/gitaction

# Switch to user gitaction
USER gitaction

CMD ["/bin/bash", "-c", "/home/gitaction/actions-runner/run-action.sh"]