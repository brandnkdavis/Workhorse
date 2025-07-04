#!/bin/bash

# Define AppData paths
APPS=("sabnzbd" "prowlarr" "radarr" "sonarr" "overseerr" "tautulli")

echo "🔧 Creating /AppData directories..."
for APP in "${APPS[@]}"; do
  mkdir -p /AppData/$APP/config
done

# App-specific backup folders
mkdir -p /AppData/sabnzbd/backup
mkdir -p /AppData/prowlarr/backup
mkdir -p /AppData/radarr/backup
mkdir -p /AppData/sonarr/backup

# Overseerr already handled with just config

# Create media paths
echo "📁 Creating /mnt/media and /mnt/downloads..."
mkdir -p /mnt/media
mkdir -p /mnt/downloads

# Set ownership
echo "🔐 Setting ownership to UID 1000 / GID 1000..."
chown -R 1000:1000 /AppData
chown -R 1000:1000 /mnt/media
chown -R 1000:1000 /mnt/downloads

echo "✅ All directories created and permissions set."
