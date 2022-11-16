FROM ubuntu:20.04

# COPY sources.list /etc/apt/sources.list

ENV TZ=Asia/Shanghai
ENV RUSTFLAGS="-C target-feature=+crt-static"
ENV PATH="/root/.cargo/bin:${PATH}"

RUN echo $TZ | tee /etc/timezone \
     && apt-get update -y \
     && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential curl \
     && curl https://sh.rustup.rs -sSf | bash -s -- -y \
     && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives

CMD ["cargo", "--help"]
