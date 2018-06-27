clc; close all; clear all;

%% load filters in mfiles

load('../mfiles/conv1_filter.mat');
export_filter2eps(conv1_filter, 'conv1_filter');


load('../mfiles/conv2_filter.mat');
export_filter2eps(conv2_filter, 'conv2_filter');