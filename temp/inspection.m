clear all;

% 테스트할 파일 디렉토리
dir350 = 'C:\Source\matlab\350Hz\';
dir550 = 'C:\Source\matlab\550Hz\';
% 파일들 선택
[fileName350, dir350, numFile350] = GetFiles(dir350);
if isequal(numFile350, 0)
    disp('350Hz파일을 선택하지 않았습니다.');
    return
end
[fileName550, dir550, numFile550] = GetFiles(dir550);
% 파일 선택 잘했는지 확인
if isequal(numFile550, 0)
    disp('550Hz파일을 선택하지 않았습니다.');
    return
elseif numFile350 ~= numFile550
    disp("파일 선택 개수가 맞지 않음.");
    fprintf('350Hz:%d, 500Hz:%d', numFile350, numFile550);
    return
else
    numFile = numFile350;
end

% for i=1:numfile
% 
% end





