#!/bin/bash

echo "================================================"
echo "  🚀 GA Automation Web App - Starting"
echo "================================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null
then
    echo "❌ Python is not installed!"
    echo "Please install Python 3.8+ from https://python.org"
    exit 1
fi

# Use python3 if available, otherwise python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null
then
    PYTHON_CMD="python"
fi

echo "✅ Python found: $($PYTHON_CMD --version)"
echo ""

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    $PYTHON_CMD -m venv venv
    echo "✅ Virtual environment created"
    echo ""
fi

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate 2>/dev/null || source venv/Scripts/activate 2>/dev/null

# Install dependencies
echo "📥 Installing dependencies..."
pip install -r requirements.txt --quiet
echo "✅ Dependencies installed"
echo ""

# Create necessary folders
echo "📁 Creating necessary folders..."
mkdir -p uploads template outputs
echo "✅ Folders created"
echo ""

# Start the application
echo "================================================"
echo "  ✨ Starting GA Automation Server"
echo "================================================"
echo ""
echo "🌐 Access the app at: http://localhost:5000"
echo "📝 Press Ctrl+C to stop the server"
echo ""
echo "================================================"
echo ""

$PYTHON_CMD app.py
