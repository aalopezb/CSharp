# Use .NET SDK image for build
FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build
WORKDIR /src

# Copy and restore project files
COPY hello-world.csproj .
RUN dotnet restore

# Copy the rest of your application code
COPY . .
RUN dotnet publish -c Release -o /app

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0-alpine AS final
WORKDIR /app
COPY --from=build /app .

# Expose port and run
EXPOSE 80
ENTRYPOINT ["dotnet", "hello-world.dll"]
