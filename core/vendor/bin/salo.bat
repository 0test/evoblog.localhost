@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../evolution-cms/salo/bin/salo
bash "%BIN_TARGET%" %*
