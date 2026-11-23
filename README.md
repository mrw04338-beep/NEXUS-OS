# NEXUS OS

A lightweight Debian-based live system focused on Bug Bounty learning and authorized web security testing.

## Current design

- Base: Debian 13 (Trixie)
- Architecture: amd64
- Desktop: KDE Plasma (minimal desktop package set)
- Build: Debian Live via GitHub Actions
- Distribution: ISO published as a GitHub Release

## Included tools

Nmap, ffuf, Python 3, Git, jq, whois, Firefox ESR, and common network utilities.

Burp Suite Community and other large or separately licensed tools are intentionally not bundled in the first ISO. They can be installed separately after boot.

## Build

1. Open the **Actions** tab.
2. Select **Build NEXUS OS**.
3. Select **Run workflow** on the `main` branch.
4. When the run succeeds, open **Releases** and download the ISO and `SHA256SUMS`.

## Important

- This is an experimental community project, not an official Debian or Kali Linux release.
- Test the ISO in a virtual machine before using it on physical hardware.
- The first build may fail if a package is unavailable or a live-build dependency changes; inspect the Actions log and adjust the configuration.
- The ISO size is checked against GitHub's per-release-asset limit.
- Never commit passwords, API keys, access tokens, or other secrets to this public repository.

## License

No license has been selected yet. Until one is added, standard copyright applies; do not assume the code is open for reuse.
