#!/bin/bash
set -e

echo "Installing frontend dependencies..."
npm install --prefix ../frontend --production=false

echo "Building frontend for production..."
npm run build --prefix ../frontend

echo "Installing backend dependencies..."
npm install

echo "Starting backend in production..."
NODE_ENV=production npm start