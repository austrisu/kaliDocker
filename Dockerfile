# Use the Kali Linux base image
FROM kalilinux/kali-rolling

# Install additional tools (optional)
RUN apt update && apt install -y kali-linux-headless net-tools

# Set a default user (Codespaces best practice)
ARG USERNAME=vscode
RUN useradd -m $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME

USER vscode
