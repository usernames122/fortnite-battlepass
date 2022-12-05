@echo off
set /p entryName="Ange artikelns namn (du kan INTE använda HTML-formatering.): "
if exist "Entries\%entryName%\" (
  echo Inlägget finns redan! Avtrampar
  pause
  exit /b 1
) else (
  echo No
)
set /p entryContents="Ange innehållet i artikeln (du kan använda HTML-formatering!): "
mkdir "Entries\%entryName%"
cd Entries
cd "%entryName%"
set "file=entry.html"
echo|set /p="<!DOCTYPE html>" > %file%
echo|set /p="<!-- Hallå! den här filen skapades av addEntrysv.bat -->" >> %file%
echo|set /p="<html>" >> %file%
echo|set /p="<head>" >> %file%
echo|set /p="<title>Artikel: %entryName%</title>" >> %file%
echo|set /p="</head>" >> %file%
echo|set /p="<body>" >> %file%
echo|set /p="<h1>%entryName%</h1>" >> %file%
echo|set /p="<br>" >> %file%
echo|set /p="<p>%entryContents%</p>" >> %file%
exit /b 0