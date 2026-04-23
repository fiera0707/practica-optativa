#!/bin/bash

dotnet publish src/PracticaOptativa -c Release -o publish

docker build -t practica-optativa:latest -f docker/Dockerfile .
