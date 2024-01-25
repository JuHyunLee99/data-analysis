function [sortedFileName, dir, numFile]= GetFiles(dir)
    % 파일 선택
    [fileName,dir] = uigetfile('*.txt','Select a file',dir,'MultiSelect','on');
    
    if isequal(fileName, 0) % 파일을 선택하지 않았을때
        sortedFileName = {};
        dir = '';
        numFile = 0;
        return
    elseif ischar(fileName) % 파일은 1개 선택했을 때
        numFile = 1;
        fileName = {fileName};  % char벡터 -> cell벡터
    else % 파일 여러개 선택했을 때
        numFile = length(fileName);
    end
    % 파일명에서 날짜 파싱
    timestemp = zeros(1,numFile);
    for i = 1:numFile
        splitFileName = strsplit(fileName{i}, {'_','.'});
        timestemp(i) = str2double([splitFileName{3}, splitFileName{4}]);
    end
    % 날짜기준으로 파일 정렬
    [~, I] = sort(timestemp);
    sortedFileName = fileName(I);    
end