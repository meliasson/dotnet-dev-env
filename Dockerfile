FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install openssh-client so we can e.g. push and pull with Git, and
# zsh so we can use Zsh instead of Bash, fiddle with locales because
# Fzf produces warnings otherwise, and create a regular user so we can
# follow the principle of least privilege instead of being root all
# the time.
RUN apt-get update && \
    apt-get install -y openssh-client zsh locales && \
    sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen && \
    locale-gen && \
    useradd -m -s $(which bash) dotnet

# Use the regular user from here on.
USER dotnet

# Install Oh My Zsh so the power of Zsh is unleashed! And install Fzf
# so we don't have to be exact all the time.
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
    ~/.fzf/install

# Default to Zsh and give it some run commands.
ENV SHELL /bin/zsh
COPY --chown=dotnet:dotnet .zshrc ~/.zshrc
