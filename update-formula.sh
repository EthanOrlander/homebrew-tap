#!/bin/bash
# Script to update the Homebrew formula for a new release

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <version> <sha256>"
    echo "Example: $0 v1.0.0 abc123def456..."
    exit 1
fi

VERSION=$1
SHA256=$2

# Remove 'v' prefix if present
VERSION_NUM=${VERSION#v}

echo "Updating formula for version $VERSION_NUM"

# Update the formula
sed -i '' "s/version \".*\"/version \"$VERSION_NUM\"/" Formula/mentat.rb
sed -i '' "s|url \".*\"|url \"https://github.com/EthanOrlander/mentat/releases/download/$VERSION/mentat-$VERSION-universal-apple-darwin.tar.gz\"|" Formula/mentat.rb
sed -i '' "s/sha256 \".*\"/sha256 \"$SHA256\"/" Formula/mentat.rb

echo "Formula updated successfully!"
echo "Don't forget to:"
echo "1. Test the formula: brew install --build-from-source Formula/mentat.rb"
echo "2. Commit and push the changes"
