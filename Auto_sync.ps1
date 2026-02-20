# Auto-sync script for MTG Proxies
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-Host "Checking for changes at $date..."

git add .

# Check if there are any staged changes
$status = git status --porcelain
if ($status) {
    Write-Host "Changes detected. Committing..."
    git commit -m "Auto-sync: $date"
    Write-Host "Pushing to repository..."
    git push
} else {
    Write-Host "No changes to sync."
}

Write-Host "Sync complete."
Pause