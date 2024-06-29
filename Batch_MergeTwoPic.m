for i_1 = 1:8
    for i_2 = 1:5

        file_embed = ['./path_to_png_folder/' num2str(i_1, '%2.2d') '-' num2str(i_2) '.png'];
        file_target = '电脑界面_gray.png';

        % 读取图片
        embed_img = imread(file_embed);
        target_img = imread(file_target);

        % 获取图片尺寸
        [embed_rows, embed_cols, ~] = size(embed_img);
        [target_rows, target_cols, ~] = size(target_img);

        % 指定嵌入位置（上下左右坐标）
        top = 20;    % 替换为你想要的位置
        bottom = 300; % 替换为你想要的位置
        left = 80;   % 替换为你想要的位置
        right = 520;  % 替换为你想要的位置

        % 计算嵌入区域的尺寸
        embed_area_rows = bottom - top + 1;
        embed_area_cols = right - left + 1;

        % 检查嵌入区域是否超出目标图片边界
        if top < 1 || left < 1 || bottom > target_rows || right > target_cols
            error('嵌入区域超出目标图片边界');
        end

        % 检查嵌入图片是否超出目标图片边界，并等比例缩小
        if embed_rows > embed_area_rows || embed_cols > embed_area_cols
            scale_factor = min(embed_area_rows / embed_rows, embed_area_cols / embed_cols);
            embed_img = imresize(embed_img, scale_factor);
            [embed_rows, embed_cols, ~] = size(embed_img);
        end

        % 确保缩小后的嵌入图片适应嵌入区域
        if embed_rows > embed_area_rows || embed_cols > embed_area_cols
            error('即使等比例缩小后，嵌入图片仍超出目标嵌入区域');
        end

        % 嵌入图片到目标图片的指定区域
        target_img(top:top + embed_rows - 1, left:left + embed_cols - 1, :) = embed_img;

        % 显示嵌入后的图片
        imshow(target_img);

        % 保存结果图片
        imwrite(target_img, ['./output/' num2str(i_1, '%2.2d') '_' num2str(i_2) 'result.png']);
    end
end