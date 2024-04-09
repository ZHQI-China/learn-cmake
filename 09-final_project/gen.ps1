# 如果build 目录存在，则删除
if (Test-Path build) {
   remove-item build\* -Recurse
   Write-host "[info] delete build dir"
}

# 使用 cmake 构建项目
cmake -G "MinGW Makefiles" -B build
cmake --build build
Write-host "[info] cmake build"

# 获取 build 目录下的 exe 文件，并执行
$exeFile = Get-ChildItem -Path build -Filter *.exe | Select-Object -ExpandProperty FullName

if ($exeFile) {
   Start-Process $exeFile
}
else {
   Write-host "[error] no exe file found"
}