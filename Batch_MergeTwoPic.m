for i_1 = 1:8
    for i_2 = 1:5

        file_embed = ['./path_to_png_folder/' num2str(i_1, '%2.2d') '-' num2str(i_2) '.png'];
        file_target = '���Խ���_gray.png';

        % ��ȡͼƬ
        embed_img = imread(file_embed);
        target_img = imread(file_target);

        % ��ȡͼƬ�ߴ�
        [embed_rows, embed_cols, ~] = size(embed_img);
        [target_rows, target_cols, ~] = size(target_img);

        % ָ��Ƕ��λ�ã������������꣩
        top = 20;    % �滻Ϊ����Ҫ��λ��
        bottom = 300; % �滻Ϊ����Ҫ��λ��
        left = 80;   % �滻Ϊ����Ҫ��λ��
        right = 520;  % �滻Ϊ����Ҫ��λ��

        % ����Ƕ������ĳߴ�
        embed_area_rows = bottom - top + 1;
        embed_area_cols = right - left + 1;

        % ���Ƕ�������Ƿ񳬳�Ŀ��ͼƬ�߽�
        if top < 1 || left < 1 || bottom > target_rows || right > target_cols
            error('Ƕ�����򳬳�Ŀ��ͼƬ�߽�');
        end

        % ���Ƕ��ͼƬ�Ƿ񳬳�Ŀ��ͼƬ�߽磬���ȱ�����С
        if embed_rows > embed_area_rows || embed_cols > embed_area_cols
            scale_factor = min(embed_area_rows / embed_rows, embed_area_cols / embed_cols);
            embed_img = imresize(embed_img, scale_factor);
            [embed_rows, embed_cols, ~] = size(embed_img);
        end

        % ȷ����С���Ƕ��ͼƬ��ӦǶ������
        if embed_rows > embed_area_rows || embed_cols > embed_area_cols
            error('��ʹ�ȱ�����С��Ƕ��ͼƬ�Գ���Ŀ��Ƕ������');
        end

        % Ƕ��ͼƬ��Ŀ��ͼƬ��ָ������
        target_img(top:top + embed_rows - 1, left:left + embed_cols - 1, :) = embed_img;

        % ��ʾǶ����ͼƬ
        imshow(target_img);

        % ������ͼƬ
        imwrite(target_img, ['./output/' num2str(i_1, '%2.2d') '_' num2str(i_2) 'result.png']);
    end
end