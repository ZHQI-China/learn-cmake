# 如果build 目录存在，则删除
if (Test-Path build) {
   remove-item build\* -Recurse
   Write-host "[ps info] delete build dir"
}
if (Test-Path bin) {
   remove-item bin\* -Recurse
   Write-host "[ps info] delete bin dir"
}
# 使用 cmake 构建项目
cmake -G "MinGW Makefiles" -B build
cmake --build build
Write-host "[ps info] cmake build"

# 获取 build 目录下的 exe 文件，并执行
$exeFile = Get-ChildItem -Path bin -Filter *.exe | Select-Object -ExpandProperty FullName

if ($exeFile) {
   Start-Process $exeFile
}
else {
   Write-host "[ps error] no exe file found"
}