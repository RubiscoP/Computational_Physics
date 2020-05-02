function [vec] = vec(n)
rng(2);
vec = rand(n,1) + 1i*rand(n,1);
