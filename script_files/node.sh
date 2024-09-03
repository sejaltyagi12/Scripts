

# Prompt the user for the Node.js version
read -p "Enter the Node.js version you want to install (e.g., 18.17.1): " NODE_VERSION


# Set the download URL and installation directory
DOWNLOAD_URL="https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"
INSTALL_DIR="/usr/local/node-v$NODE_VERSION

# Download the Node.js tarball
echo "Downloading Node.js version $NODE_VERSION..."
wget "$DOWNLOAD_URL"

# Check if the download was successful
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to download Node.js version $NODE_VERSION. Please check the version and try again."
  exit 1
fi

# Create installation directory
echo "Creating installation directory $INSTALL_DIR..."
sudo mkdir -p "$INSTALL_DIR"

# Extract the tarball
echo "Extracting Node.js..."
sudo tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C "$INSTALL_DIR" --strip-components=1

# Clean up downloaded tarball
rm "node-v$NODE_VERSION-linux-x64.tar.xz"

# Update PATH variable
echo "Updating PATH variable..."
echo "export PATH=$INSTALL_DIR/bin:\$PATH" | sudo tee /etc/profile.d/nodejs.sh > /dev/null

# Source the updated profile
source /etc/profile.d/nodejs.sh

# Verify installation
echo "Verifying Node.js installation..."
node -v
npm -v

echo "Node.js version $NODE_VERSION installed successfully."
echo "Usage: $0"
 
