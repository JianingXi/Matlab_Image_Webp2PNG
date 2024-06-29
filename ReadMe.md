### MATLAB_Image_Webp2PNG 项目 README

---

## 简介

MATLAB_Image_Webp2PNG 项目包含一系列 MATLAB 和批处理脚本，用于将 WebP 图片批量转换为 PNG 格式，并进行其他图像处理操作。该项目适用于需要在 MATLAB 环境中进行图像格式转换和批量图像处理的用户。

---

## 文件列表

1. **Batch_CompressPNG.m**
2. **Batch_MergeTwoPic.m**
3. **批量转webp图片.bat**
4. **示例图片文件**:
   - 01.webp
   - 01_1result.png
   - 01-1.png
   - 电脑界面.png
   - 电脑界面_gray.png

---

## 文件功能介绍

### Batch_CompressPNG.m

**功能：**
- 批量压缩 PNG 图像文件，减小图像文件的体积。
- 可用于优化图像存储空间或提高图像加载速度。

**使用方法：**
1. 将需要压缩的 PNG 图像放置在同一文件夹中。
2. 修改脚本中的路径变量为图像所在文件夹路径。
3. 运行脚本，开始批量压缩 PNG 图像。

### Batch_MergeTwoPic.m

**功能：**
- 批量合并两张图片为一张。
- 可以根据具体需求选择水平或垂直合并。

**使用方法：**
1. 将需要合并的两组图像放置在指定文件夹中。
2. 修改脚本中的路径变量和合并方式（水平或垂直）。
3. 运行脚本，批量合并图像。

### 批量转webp图片.bat

**功能：**
- 批处理脚本，用于将指定文件夹中的所有 WebP 格式图片批量转换为 PNG 格式。

**使用方法：**
1. 将该批处理脚本与需要转换的 WebP 图片放置在同一文件夹中。
2. 双击运行脚本，开始批量转换图片格式。

---

## 使用步骤

1. **下载项目文件**：
   - 确保所有相关文件都下载到本地目录。

2. **配置 MATLAB 脚本**：
   - 打开 MATLAB，确保设置正确的工作目录。
   - 修改 `Batch_CompressPNG.m` 和 `Batch_MergeTwoPic.m` 脚本中的路径变量为图像文件所在的路径。

3. **运行 MATLAB 脚本**：
   - 在 MATLAB 命令窗口中运行 `Batch_CompressPNG.m` 和 `Batch_MergeTwoPic.m` 脚本，进行批量图像处理。

4. **运行批处理脚本**：
   - 双击运行 `批量转webp图片.bat`，批量转换 WebP 图片为 PNG 格式。

5. **查看结果**：
   - 处理完成后，检查输出文件夹中的图像文件，确保转换和处理效果符合预期。

---

## 注意事项

- 请确保 MATLAB 安装正确，并拥有 Symbolic Math Toolbox 以支持脚本运行。
- 确保所有图像文件路径正确，避免文件路径错误导致脚本无法正常运行。

---

## 联系方式

如有任何问题或建议，请联系项目维护者：

- 邮箱：example@example.com

---

## English Version

---

### MATLAB_Image_Webp2PNG Project README

---

## Introduction

The MATLAB_Image_Webp2PNG project contains a series of MATLAB and batch scripts designed to batch convert WebP images to PNG format and perform other image processing operations. This project is suitable for users who need to perform image format conversion and batch image processing in the MATLAB environment.

---

## File List

1. **Batch_CompressPNG.m**
2. **Batch_MergeTwoPic.m**
3. **Batch Convert WebP Images.bat**
4. **Example Image Files**:
   - 01.webp
   - 01_1result.png
   - 01-1.png
   - 电脑界面.png
   - 电脑界面_gray.png

---

## File Functionality Description

### Batch_CompressPNG.m

**Functionality:**
- Batch compress PNG image files to reduce the file size.
- Useful for optimizing image storage space or improving image loading speed.

**Usage:**
1. Place the PNG images you want to compress in the same folder.
2. Modify the path variable in the script to the folder path where the images are located.
3. Run the script to start batch compressing PNG images.

### Batch_MergeTwoPic.m

**Functionality:**
- Batch merge two images into one.
- You can choose horizontal or vertical merging based on specific needs.

**Usage:**
1. Place the two sets of images you want to merge in the specified folder.
2. Modify the path variables and merging method (horizontal or vertical) in the script.
3. Run the script to batch merge images.

### Batch Convert WebP Images.bat

**Functionality:**
- A batch script for batch converting all WebP format images in the specified folder to PNG format.

**Usage:**
1. Place this batch script in the same folder as the WebP images you want to convert.
2. Double-click the script to start batch converting image formats.

---

## Usage Steps

1. **Download Project Files**:
   - Ensure all relevant files are downloaded to the local directory.

2. **Configure MATLAB Scripts**:
   - Open MATLAB and ensure the correct working directory is set.
   - Modify the path variables in the `Batch_CompressPNG.m` and `Batch_MergeTwoPic.m` scripts to the paths where the image files are located.

3. **Run MATLAB Scripts**:
   - Run the `Batch_CompressPNG.m` and `Batch_MergeTwoPic.m` scripts in the MATLAB command window for batch image processing.

4. **Run Batch Script**:
   - Double-click the `Batch Convert WebP Images.bat` script to batch convert WebP images to PNG format.

5. **Check Results**:
   - After processing is complete, check the output folder for image files to ensure the conversion and processing effects meet expectations.

---

## Notes

- Ensure MATLAB is installed correctly and has the Symbolic Math Toolbox to support script execution.
- Ensure all image file paths are correct to avoid script errors due to incorrect file paths.
