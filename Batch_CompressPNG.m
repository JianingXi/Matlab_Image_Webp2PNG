% 获取用户输入的压缩比率
compression_ratio = 0.2;

% 指定图片目录和保存压缩后图片的目录
input_dir = './output';
output_dir = './output_compress';

% 检查输出目录是否存在，如果不存在则创建
if ~exist(output_dir, 'dir')
    mkdir(output_dir);
end

% 获取目录中所有PNG图片的文件信息
image_files = dir(fullfile(input_dir, '*.png'));

% 遍历每一张图片进行等比例压缩并保存
for k = 1:length(image_files)
    % 构建图片的完整路径
    input_file = fullfile(input_dir, image_files(k).name);
    
    % 读取图片
    img = imread(input_file);
    
    % 计算新的尺寸
    new_size = round(size(img) * compression_ratio);
    
    % 等比例缩放图片
    resized_img = imresize(img, [new_size(1), new_size(2)]);
    
    % 构建输出文件的完整路径
    output_file = fullfile(output_dir, image_files(k).name);
    
    % 保存压缩后的图片
    imwrite(resized_img, output_file);
    
    % 显示处理进度
    fprintf('已处理: %s\n', image_files(k).name);
end

fprintf('所有图片已处理完毕并保存到: %s\n', output_dir);
