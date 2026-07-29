FROM registry.redhat.io/devspaces/udi-rhel9:latest

USER 0

RUN dnf install -y \
    git \
    vim-enhanced \
    jq \
    wget \
    sudo \
    && dnf clean all

# Install Oh My Bash
USER 0

# Install Oh My Bash
RUN git clone --depth=1 https://github.com/ohmybash/oh-my-bash.git /home/user/.oh-my-bash && \
    cp /home/user/.oh-my-bash/templates/bashrc.osh-template /home/user/.bashrc && \
    sed -i 's/^OSH_THEME=.*/OSH_THEME="agnoster"/' /home/user/.bashrc && \
    sed -i 's|^export OSH=.*|export OSH="$HOME/.oh-my-bash"|' /home/user/.bashrc && \
    chgrp -R 0 /home/user && \
    chmod -R g=u /home/user

USER 1001
