FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    cmake g++ build-essential

WORKDIR /app
COPY src/ /app/

RUN cmake -B build -S . && cmake --build build

CMD ["./build/main"]