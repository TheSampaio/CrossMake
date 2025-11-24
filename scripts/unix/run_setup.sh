#!/bin/bash

# Get the current folder name as project name
PROJECT_NAME="${PWD##*/}"
echo "Current project: $PROJECT_NAME"

# Delete the existing README.md
[ -f README.md ] && rm README.md

# Create a new README.md
cat <<EOF > README.md
# $PROJECT_NAME

This project is a cross-platform C++ project initialized from the [CrossMake](https://github.com/TheSampaio/CrossMake) template.

## 📜 License
This project template is released under the **MIT License**.

## ⭐ Support
If you find this template useful, consider starring the [CrossMake](https://github.com/TheSampaio/CrossMake) repository on GitHub to help others discover it.
EOF

# Update CMakeLists.txt with the current project name
if [ -f CMakeLists.txt ]; then
    sed -i "s/project(.* LANGUAGES CXX)/project(\"$PROJECT_NAME\" LANGUAGES CXX)/" CMakeLists.txt
fi

# Delete .gitkeep files in include, tests, and vendor folders
[ -f include/.gitkeep ] && rm include/.gitkeep
[ -f tests/.gitkeep ] && rm tests/.gitkeep
[ -f vendor/.gitkeep ] && rm vendor/.gitkeep

echo "Setup completed."
