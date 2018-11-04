FROM microsoft/dotnet:2.1-sdk
ENV DOTNET_USE_POLLING_FILE_WATCHER=1
COPY . /app
WORKDIR /app
CMD ["/bin/bash", "-c", "dotnet restore && dotnet watch run"]