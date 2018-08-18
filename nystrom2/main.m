%function [eig_val,eig_vec,eig_val2,eig_vec2] = main(K,prob)
function [] = main(K,prob)
n = 100;
m = 100;
d = 15;
gamma = 2;
epsilon = 2;
k = 5;
c = floor(64*k/(epsilon^4));
%c = 4000;
[K,prob] = Gram_P_generation(n,m,d,gamma);
%load('KP9000R80.mat');
tic
%[c_ind] = non_uniform_sampling(prob,c);
%[eig_val,eig_vec,eig_val2,eig_vec2] = Nystrom2(K,c_ind,prob,d);
%[eig_val,eig_vec] = Nystrom(K,c_ind,prob,d);
[eig_val,eig_vec] = eigs(K,d);
toc
%eig_val
%eig_vec
end
