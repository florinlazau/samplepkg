﻿if(Test-Path .\nugetpkg) { Remove-Item .\nugetpkg -Force -Recurse }

dotnet build 

dotnet pack  -c Debug -o .\nugetpkg --version-suffix = $env:APPVEYOR_BUILD_NUMBER /p:PackageVersion=4.2.0-$(Build.BuildNumber)