FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build
WORKDIR /src
COPY ["TestApp/TestApp.csproj", "TestApp/"]
RUN dotnet restore "TestApp/TestApp.csproj"
COPY . .
WORKDIR "/src/TestApp"
RUN dotnet build "TestApp.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "TestApp.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "TestApp.dll"]