FROM microsoft/dotnet:2.1.3-aspnetcore-runtime-alpine3.7 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /app
COPY . .
RUN dotnet restore
WORKDIR "/app/"
RUN dotnet build -c Release

#FROM build AS publish
#RUN dotnet publish "freerangehacks.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "/app/bin/Release/netcoreapp2.1/freerangehacks.dll"]