FROM rust:1.62.1-buster

COPY ./target/x86_64-unknown-linux-gnu/release/rocket-fly-example /opt/rocket-fly-example

ENTRYPOINT /opt/rocket-fly-example
