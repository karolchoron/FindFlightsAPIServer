# Używamy oficjalnego obrazu .NET SDK 9.0 jako środowisko budowania
# SDK zawiera wszystkie narzędzia do kompilacji i publikacji aplikacji
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

# Ustawiamy katalog roboczy wewnątrz kontenera
WORKDIR /app

# Kopiujemy wszystkie pliki projektu do kontenera
COPY . ./

# Przywracamy zależności z pliku .csproj (pobieramy paczki NuGet)
RUN dotnet restore

# Kompilujemy i publikujemy aplikację w trybie Release
RUN dotnet publish -c Release -o /out

# Tworzymy nowy, mniejszy obraz na bazie .NET ASP.NET Runtime 9.0
# Runtime zawiera tylko niezbędne rzeczy do uruchomienia aplikacji (bez narzędzi deweloperskich)
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS runtime

# Ustawiamy katalog roboczy
WORKDIR /app

# Kopiujemy skompilowane pliki aplikacji z poprzedniego etapu
COPY --from=build /out ./

# Otwieramy port 8080, aby aplikacja była dostępna
EXPOSE 8080

# Uruchamiamy aplikację ASP.NET Core
CMD ["dotnet", "FindFlightsAPIServer.dll"]