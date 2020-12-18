param($installPath, $toolsPath, $package, $project)
$libDir =  $toolsPath | split-path
# Creates '_Vortex' folder.
mkdir .\_Vortex\out\  -ErrorAction SilentlyContinue

# Copy builder to _Vortex folder
cp $libDir\assets\** .\_Vortex\builder\ -Recurse -Force

# Copy HW ID utility to _Vortex folder
cp $libDir\tools\GetMyHardwareId.exe  .\_Vortex

# Change build.ps script
#$toolsPath + 
'builder\' + 'vortex.compiler.console.exe' > $libDir\assets\script\build.ps1 
cp $libDir\assets\script\build.ps1 .\_Vortex\