 hiddenLayerSize = [10 20 50 20 10];
 trainFcn = 'trainbfg';
% 
NN8 = cascadeforwardnet(hiddenLayerSize,trainFcn);

% Setup Division of Data for Training, Validation, Testing
% For a list of all data division functions type: help nndivide
NN8.divideParam.trainRatio = 80/100;
NN8.divideParam.testRatio = 10/100;
NN8.divideParam.valRatio = 10/100;
NN8.trainParam.goal = 0;
NN8.trainParam.epochs = 20;
NN8.trainFcn = 'trainbfg';

[NN8,tr] = train(NN8, Data', val_1day');



% 52-54% feedforwardnet
% 53-54 cascadeforwardnet
% ровно 52 fitnet
% 50 - 53 cascadeforwardnet