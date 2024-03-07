deploy:
	# Build with statically-linked libc, and explicit target
	RUSTFLAGS='-C target-feature=+crt-static' \
	cargo build --release --target x86_64-unknown-linux-gnu &&\
	fly deploy

