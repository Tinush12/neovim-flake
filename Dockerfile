# Stage 1: Build the nixvim derivation
FROM nixos/nix:latest AS builder

# Enable flakes and nix-command
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf \
 && echo "sandbox = false" >> /etc/nix/nix.conf

WORKDIR /build

# Copy the flake and nixvim config
COPY flake.nix flake.nix
COPY nixvim-config/ nixvim-config/

# Build the nixvim package and copy it to /out for later
RUN nix build .#default --out-link /out/nvim

# Stage 2: Minimal runtime image
FROM nixos/nix:latest

RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf

# Copy the built nixvim closure from the builder
COPY --from=builder /nix/store /nix/store
COPY --from=builder /out/nvim /out/nvim

# Make nvim available on PATH via a simple wrapper
RUN mkdir -p /usr/local/bin && ln -s /out/nvim/bin/nvim /usr/local/bin/nvim

WORKDIR /workspace

ENTRYPOINT ["/usr/local/bin/nvim"]
