Import-Module Terminal-Icons

oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/darkblood.omp.json' | Invoke-Expression

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

# Minimal profile: UTF‑8 + Oh My Posh (if installed) + Fastfetch with explicit config path

try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

winfetch


function digclk {
 $scriptPath = Resolve-Path -Path '~/Documents/digclk.ps1'
 & $scriptPath
}
