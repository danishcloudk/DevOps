#!/bin/bash
echo "Running tests..."

python app.py

if [ $? -eq 0 ]; then
    echo "✅ Tests passed!"
else
    echo "❌ Tests failed!"
    exit 1
fi
