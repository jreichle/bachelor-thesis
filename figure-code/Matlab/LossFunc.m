function [] = LossFunc()
%LOSSFUNC Summary of this function goes here
%   Detailed explanation goes here
[X,Y,Z] = peaks(25);
Z = Z + 6;
s = surfc(X,Y,Z);
end

