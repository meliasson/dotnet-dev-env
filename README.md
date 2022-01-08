# .NET development environment

A containerized .NET development environment using Docker Compose and Visual Studio Code.

## Get started

The directory /home/dotnet/code in the container is a volume mapped to ./code on the host, so a typical workflow could be

1. Clone this repository to directory a.
2. Clone a .NET repository into a/code.
3. Open a in Visual Studio Code, in a remote container, and hack away.
