function [vec_normed] = vec(n)
% rng(2);
vec = rand(n,1) + 1i*rand(n,1);
% vec = rand(n,1);
vec_normed = vec./norm(vec);