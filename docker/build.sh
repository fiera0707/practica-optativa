
#!/bin/bash

dotnet publish src/practica-optativa -c Release -o publish

docker build --no-cache -t practica-optativa:latest -f docker/Dockerfile .