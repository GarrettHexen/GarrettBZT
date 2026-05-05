# Start from the official Bazzite NVIDIA image
FROM ghcr.io/ublue-os/bazzite-nvidia:latest

# This is where we remove the "bloat" you don't want
# We use rpm-ostree override remove to keep the image slim
RUN rpm-ostree override remove \
    firefox \
    thunderbird \
    && rpm-ostree cleanup -a

# If there are other specific things you want gone, 
# we can add them to the list above later.
