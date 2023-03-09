# Set up the download URL
$url = "https://downloadURL.com/fileWithPassword.zip"

# Set up the 7-Zip executable location
$7zipExe = "C:\Program Files\7-Zip\7z.exe"

# Set up the file name
$fileName = "fileWithPassword.zip"

# Set up the destination folder
$destination = "C:\Downloads"

# Set up password for the archive
$password = "NotASecurePassword123"

# Download the file to the destination folder
Invoke-WebRequest -Uri $url -OutFile "$destination\$fileName"

# Unzip the file with 7-Zip using the CLI
$7zipExe x "$destination\$fileName" -o"$destination" -p$password -y