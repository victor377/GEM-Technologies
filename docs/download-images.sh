#!/usr/bin/env bash
# Downloads the 5 images GEM Technologies' index.html needs, into ./assets/
# Run this from your repo root — the folder that contains index.html:
#     bash download-images.sh
set -e
mkdir -p assets

echo "Downloading images into assets/ ..."

# Backgrounds (full-bleed, 1920px)
curl -L "https://images.unsplash.com/photo-1518770660439-4636190af475?auto=format&fit=crop&w=1920&q=80" -o assets/hero-bg.jpg
curl -L "https://images.unsplash.com/photo-1550751827-4bd374c3f58b?auto=format&fit=crop&w=1920&q=80" -o assets/about-bg.jpg
# cloud-earth is used BOTH as the contact background and the cloud service card, so grab it at 1920px
curl -L "https://images.unsplash.com/photo-1451187580459-43490279c0fa?auto=format&fit=crop&w=1920&q=80" -o assets/cloud-earth.jpg

# Service-card photos (1200px is plenty)
curl -L "https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=1200&q=80" -o assets/service-software.jpg
curl -L "https://images.unsplash.com/photo-1677442136019-21780ecad995?auto=format&fit=crop&w=1200&q=80" -o assets/service-ai.jpg

echo "Done. 5 images saved to assets/"
ls -la assets/

