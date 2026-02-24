# Navigate to Documents
Set-Location $HOME\Documents

# Create a variable for the main workspace folder
$Workspace = "DataProcessing"

# Create main folder
New-Item -ItemType Directory -Name $Workspace -Force

# Move into the workspace folder
Set-Location $Workspace

# Create subfolders
New-Item -ItemType Directory -Name Incoming -Force
New-Item -ItemType Directory -Name Processed -Force

# Create employees.csv in Incoming
New-Item -ItemType File -Path .\Incoming\employees.csv -Force

# Add sample data
Add-Content -Path .\Incoming\employees.csv -Value "LaVarr,IT,Apprentice"
Add-Content -Path .\Incoming\employees.csv -Value "Kenneth,BA,Apprentice"
Add-Content -Path .\Incoming\employees.csv -Value "Kelli,BA,Apprentice"

# Display file contents
Get-Content .\Incoming\employees.csv

# Move file to Processed
Move-Item -Path .\Incoming\employees.csv -Destination .\Processed

# Completion message
Write-Host "Data Processing Complete"
