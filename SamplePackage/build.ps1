if(Test-Path .\nugetpkg) { Remove-Item .\nugetpkg -Force -Recurse }

dotnet build 

dotnet pack  -c Debug -o .\nugetpkg /p:PackageVersion=3.0.0 --version-suffix = $env:APPVEYOR_BUILD_NUMBER 