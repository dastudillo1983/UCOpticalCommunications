function [ Pout ] = fiber_loss( L, alpha )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

alpha1 = alpha/(10*log10(exp(1)));   %
Pin = 1;
Pout = Pin*exp(-alpha1*L);

end

