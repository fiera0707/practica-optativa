# Etapa 1: Compilación (SDK)

    # ETAPA 1: Construcción (Build)
# Usamos el SDK de .NET 8 para compilar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# 1. Copiamos los archivos de proyecto (.csproj) primero.
# Esto permite que Docker cachee las dependencias de NuGet si no cambian.
COPY ["src/PracticaOptativa/PracticaOptativa.csproj", "PracticaOptativa/"]
RUN dotnet restore "PracticaOptativa/PracticaOptativa.csproj"

# 2. Copiamos el resto del código y compilamos
COPY src/PracticaOptativa/ ./PracticaOptativa/
WORKDIR /src/PracticaOptativa
RUN dotnet publish "PracticaOptativa.csproj" -c Release -o  /app/publish /p:UseAppHost=false

# ETAPA 2: Ejecución (Runtime)
# Usamos la versión Alpine de ASP.NET por seguridad y ligereza
FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
WORKDIR /app

# Exponer el puerto que usa la app (típicamente 80 o 8080 en .NET 8)
EXPOSE 8080

# Copiamos solo los binarios compilados desde la etapa 'build'
COPY --from=build /app/publish .

# Definimos el punto de entrada
ENTRYPOINT ["dotnet", "PracticaOptativa.dll"]