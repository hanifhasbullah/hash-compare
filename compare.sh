#!/bin/bash

# Get filename
read -e -p "Enter filename: " filename

# Get hash type
read -p "Enter hash (e.g., sha256sum ): " hashType

# Get hash
read -p "Enter hash string: " hashStr

# Get actual_hash from filename
actual_hash=$($hashType $filename | cut -d' ' -f1)

if [[ $hashStr == $actual_hash ]]; then
    echo "Hashes match!"
else
    echo "Hashes does not match!"
fi
