# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.0/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends zsh gcc make gdb valgrind libreadline-dev build-essential strace ltrace python3 python3-pip golang

ENV USER vscode
RUN chsh -s /bin/zsh vscode
RUN echo "$USER:toor" | chpasswd
USER vscode
RUN pip3 install norminette c-formatter-42
RUN rm -rf /home/vscode/.oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN curl https://get.volta.sh | bash
RUN /home/vscode/.volta/bin/volta install node
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN curl -fsSL https://deno.land/install.sh | sh
RUN echo 'export DENO_INSTALL="$HOME/.deno"' >> ~/.zshrc
RUN echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.zshrc