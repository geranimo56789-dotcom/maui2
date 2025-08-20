Write-Host "=== MAUI2 GitHub Repository Setup Script ===" -ForegroundColor Green
Write-Host ""
Write-Host "This script will help you create and push your MAUI2 Hello World app to GitHub" -ForegroundColor Yellow
Write-Host ""

Write-Host "STEP 1: Create GitHub Repository" -ForegroundColor Cyan
Write-Host "----------------------------------------" -ForegroundColor Gray
Write-Host "1. Go to: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: maui2" -ForegroundColor White
Write-Host "3. Description: Simple Hello World MAUI app with iOS build automation" -ForegroundColor White
Write-Host "4. Make it PUBLIC" -ForegroundColor White
Write-Host "5. DO NOT check: Add a README file, Add .gitignore, Choose a license" -ForegroundColor Red
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "Press any key after creating the repository..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

Write-Host ""
Write-Host "STEP 2: Push to GitHub" -ForegroundColor Cyan
Write-Host "----------------------------------------" -ForegroundColor Gray

try {
    Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
    git push https://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@github.com/geranimo56789-dotcom/maui2.git master
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host " SUCCESS! MAUI2 uploaded to GitHub!" -ForegroundColor Green
        Write-Host ""
        Write-Host "What happens next:" -ForegroundColor Yellow
        Write-Host " GitHub Actions will automatically start building iOS" -ForegroundColor Green
        Write-Host " Build runs on macOS-14 with .NET 8" -ForegroundColor Green
        Write-Host " Installs MAUI workloads (maui, maui-ios, etc.)" -ForegroundColor Green
        Write-Host " Creates iOS simulator .app file for download" -ForegroundColor Green
        Write-Host ""
        Write-Host "Monitor the build progress at:" -ForegroundColor Cyan
        Write-Host "https://github.com/geranimo56789-dotcom/maui2/actions" -ForegroundColor White
        Write-Host ""
        Write-Host "The iOS build artifact will be available for download after successful completion!" -ForegroundColor Green
    } else {
        Write-Host ""
        Write-Host " Push failed. Please check:" -ForegroundColor Red
        Write-Host "- Repository was created correctly" -ForegroundColor White
        Write-Host "- Repository name is exactly 'maui2'" -ForegroundColor White
        Write-Host "- Repository is public" -ForegroundColor White
    }
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
}

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
