@echo off
setlocal enabledelayedexpansion

rem 设置输入和输出文件夹路径
set "input_folder=./input"
set "output_folder=./path_to_png_folder"

rem 确保输出文件夹存在，如果不存在则创建
if not exist "%output_folder%" mkdir "%output_folder%"

rem 遍历输入文件夹中的所有WEBP文件并转换为PNG
for %%f in ("%input_folder%\*.webp") do (
    set "filename=%%~nf"
    magick convert "%%f" "%output_folder%\!filename!.png"
)

echo 批量转换完成
pause
