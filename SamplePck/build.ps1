﻿if(Test-Path .\nugetpkg) { Remove-Item .\nugetpkg -Force -Recurse }

dotnet build 

dotnet pack  -c Debug -o .\nugetpkg 