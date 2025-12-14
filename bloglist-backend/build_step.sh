#!/bin/bash
set -e

echo "Installing frontend dependencies..."
npm install --prefix ../bloglist-frontend

echo "Building frontend for production..."
npm run build --prefix ../bloglist-frontend

echo "Installing backend dependencies..."
npm install

echo "Starting backend in production..."
NODE_ENV=production npm start