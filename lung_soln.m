%filename: lung.m (main program)
clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
cref=0.2/(22.4*(310/273))
M=0.011 * 1.6
beta = 1;      
setup_lung_soln
cvsolve
outchecklung

plot([0 0.5 1],[0.0297 0.0253 0.0176])
title('Task 4')
xlabel('Beta')
ylabel('Maximum sustainable M')
