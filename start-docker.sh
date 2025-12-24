#!/bin/bash
# AIDiary Docker Startup Script

echo "============================================================"
echo "AIDiary - Docker Startup"
echo "============================================================"

# Ensure diary.db exists as a file (not directory) for Docker mount
if [ ! -f "diary.db" ]; then
    rm -rf diary.db 2>/dev/null  # Remove if it's a directory
    touch diary.db
    echo "Created empty diary.db for first-time setup"
fi

echo ""
echo "Starting AIDiary Docker container..."
docker-compose up -d

echo ""
echo "============================================================"
echo "AIDiary is running!"
echo "============================================================"
echo ""
echo "  Access at: http://localhost:8000"
echo ""
echo "============================================================"
echo ""
echo "To stop: docker-compose down"
echo "To view logs: docker-compose logs -f diaryml"
