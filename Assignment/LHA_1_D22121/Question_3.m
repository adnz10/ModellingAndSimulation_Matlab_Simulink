clc,clear,close all

%% Assignment Lab 01

%% Question 3: 
Rm = rand([5 5]); % Random matrix of size 5x5 in range(0,1)

subMatrix = Rm(2:4,3:4);

delete = Rm;
delete(2:4,:) = [];
delete(:,5) = [];

exchangeRow = Rm;
exchangeRow([1 end],:) = exchangeRow([end 1],:);

exchangeCol = Rm;
exchangeCol(:,[1 end]) = exchangeCol(:,[end 1]);

% insert column of ones to right
onesC = ones(size(Rm,1),1);
RMCR = [Rm onesC];

% insert column of ones to left
RMCL = [onesC Rm];

% insert 2 rows of ones on top
onesR = ones(2,size(Rm,2));
RMR2U = [ onesR; Rm];

% insert 2 rows of ones at bottom
RMR2B = [ Rm;onesR];










