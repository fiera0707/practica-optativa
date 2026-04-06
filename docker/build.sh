#!/bin/bash

dotnet publish src/ToyApi.Api -c Release -o publish

docker build -t toy-api:latest -f docker/Dockerfile .
