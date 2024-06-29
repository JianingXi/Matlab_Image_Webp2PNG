% ��ȡ�û������ѹ������
compression_ratio = 0.2;

% ָ��ͼƬĿ¼�ͱ���ѹ����ͼƬ��Ŀ¼
input_dir = './output';
output_dir = './output_compress';

% ������Ŀ¼�Ƿ���ڣ�����������򴴽�
if ~exist(output_dir, 'dir')
    mkdir(output_dir);
end

% ��ȡĿ¼������PNGͼƬ���ļ���Ϣ
image_files = dir(fullfile(input_dir, '*.png'));

% ����ÿһ��ͼƬ���еȱ���ѹ��������
for k = 1:length(image_files)
    % ����ͼƬ������·��
    input_file = fullfile(input_dir, image_files(k).name);
    
    % ��ȡͼƬ
    img = imread(input_file);
    
    % �����µĳߴ�
    new_size = round(size(img) * compression_ratio);
    
    % �ȱ�������ͼƬ
    resized_img = imresize(img, [new_size(1), new_size(2)]);
    
    % ��������ļ�������·��
    output_file = fullfile(output_dir, image_files(k).name);
    
    % ����ѹ�����ͼƬ
    imwrite(resized_img, output_file);
    
    % ��ʾ�������
    fprintf('�Ѵ���: %s\n', image_files(k).name);
end

fprintf('����ͼƬ�Ѵ�����ϲ����浽: %s\n', output_dir);
