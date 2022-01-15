FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN apt-get update && apt-get --assume-yes install openssh-client
RUN useradd -m -s $(which bash) dotnet
USER dotnet
