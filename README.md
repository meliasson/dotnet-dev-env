# .NET development environment

A containerized .NET development environment using Docker Compose and Visual Studio Code.

## Get started

The directory _/home/dotnet/code_ in the container is a volume mapped to _./code_ on the host, so a typical workflow could be

1. Clone this repository to directory _d_ on the host machine.
2. Clone a .NET project, like [this](https://github.com/meliasson/advent-of-code), into _d/code_, still on the host machine.
3. Open _d_ in VS Code, still on the host machine (in a remote container; VS Code will likely prompt you to do so since this repository contains a .devcontainer.json file) and hack away.
