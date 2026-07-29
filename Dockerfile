FROM registry.redhat.io/devspaces/udi-rhel9:latest

USER 0

RUN dnf install -y \
    git \
    vim-enhanced \
    jq \
    wget \
    curl \
    sudo \
    && dnf clean all

# Install Oh My Bash
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" || true

USER 1001
