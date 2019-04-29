function [ B ] = StepIndex( n1,delta,L )
%STEPINDEX This function returns the Data Rate in function
%           of refraction index (n1), delta and distance (L)
%          Step Index Equation:
%           B=\frac{c\;n_2}{2\;(n_1)^2\;\Delta\;L}$
%   Detailed explanation goes here
    c = 3*10^8;
    n2=CladdingRefractionIndex(n1,delta);
    B = (c*n2)./(2*n1*n1*delta*L); 
end

