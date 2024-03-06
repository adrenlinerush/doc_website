#!/bin/bash

set -e

echo "Install dependencies..."
npm install

echo "Starting express server..."
node index.js
