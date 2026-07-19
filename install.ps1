<#
.SYNOPSIS
  Paid Media & Marketing Skills for Claude — installer (Windows PowerShell)

.DESCRIPTION
  Run from inside the cloned repo.

.EXAMPLE
  .\install.ps1
  Installs all 98 skills globally, to ~/.claude/skills

.EXAMPLE
  .\install.ps1 -Project
  Installs all 98 skills into this project only, to .\.claude\skills

.EXAMPLE
  .\install.ps1 -Domain meta-ads
  Installs only the Meta Ads domain

.EXAMPLE
  .\install.ps1 -List
  Lists installable domain names and exits

.EXAMPLE
  .\install.ps1 -DryRun
  Shows what would be installed without copying anything

.NOTES
  Domains: google-ads, meta-ads, linkedin-ads, tiktok-ads, paid-media, creative
#>

param(
    [switch]$Project,
    [string]$Domain = "all",
    [switch]$List,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsSrc = Join-Path $ScriptDir "skills"

$DomainPatterns = @{
    "google-ads"   = @("google-ads*", "google-analytics-ga4", "google-search-console", "google-tag-manager", "google-business-profile", "looker-studio-reporting", "youtube-organic-growth", "google-workspace")
    "meta-ads"     = @("meta-ads*", "instagram-organic-growth")
    "linkedin-ads" = @("linkedin-ads*", "linkedin-organic-growth")
    "tiktok-ads"   = @("tiktok-ads*", "tiktok-shop-organic")
    "paid-media"   = @("paid-media-*")
    "creative"     = @("ad-creative-intelligence", "ad-copywriting-frameworks", "creative-brief-generator", "creative-testing-framework", "creative-performance-analysis", "creative-fatigue-management", "ai-creative-generation", "ecommerce-creative-system", "brand-voice-ad-adaptation")
}

if ($List) {
    Write-Host "Available domains: all, $($DomainPatterns.Keys -join ', ')"
    exit 0
}

if (-not (Test-Path $SkillsSrc)) {
    Write-Error "Couldn't find a skills\ folder next to this script. Run this from inside the cloned repo, e.g.: .\install.ps1"
    exit 1
}

if ($Project) {
    $Target = Join-Path (Get-Location).Path ".claude\skills"
} else {
    $Target = Join-Path $HOME ".claude\skills"
}

$foldersToInstall = @()
if ($Domain -eq "all") {
    $foldersToInstall = Get-ChildItem -Path $SkillsSrc -Directory
} else {
    if (-not $DomainPatterns.ContainsKey($Domain)) {
        Write-Error "Unknown domain: $Domain. Run with -List to see options."
        exit 1
    }
    foreach ($pattern in $DomainPatterns[$Domain]) {
        $foldersToInstall += Get-ChildItem -Path $SkillsSrc -Directory -Filter $pattern
    }
}

if (-not $DryRun -and -not (Test-Path $Target)) {
    New-Item -ItemType Directory -Force -Path $Target | Out-Null
}

$count = 0
foreach ($folder in $foldersToInstall) {
    if ($DryRun) {
        Write-Host "would install: $($folder.Name)"
    } else {
        Copy-Item -Path $folder.FullName -Destination $Target -Recurse -Force
    }
    $count++
}

Write-Host ""
if ($DryRun) {
    Write-Host "Dry run: $count skill(s) would be installed to $Target"
} else {
    Write-Host "Installed $count skill(s) to $Target"
    Write-Host "Restart your Claude Code session (or reload skills, if your client supports hot-reload) to pick them up."
}
