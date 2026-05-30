$ID = Read-Host "Veuillez saisir votre ID de Flat.io"
$NAME = Read-Host "Entrez votre nom sans le .json"
$URL = "https://flat.io/api/v2/scores/$ID/revisions/last/json"

try  {
    Invoke-WebRequest -Uri $URL -OutFile .\$NAME.json
}
catch {
    Write-Host "Une erreur est survenue lors de l'accès/téléchargement"
    exit 1
}

Write-Host "Terminé"
Start-Sleep -Seconds 2