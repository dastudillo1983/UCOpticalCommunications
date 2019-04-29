function [ B ] = GradedIndex( n1, delta, L)
%GRADEDINDEX This function returns the Data Rate in function
%           of refraction index (n1), delta and distance (L)
%          Graded Index Equation:
%           B=\frac{8\;c}{2\;(n_1)\;\Delta^2\;L}$
%   Detailed explanation goes here
    c = 3*10^8;
    B = (8*c)./(2*n1*delta*delta*L);   %graded index
end

