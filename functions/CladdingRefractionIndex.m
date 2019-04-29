function [ n2 ] = CladdingRefractionIndex( n1, delta )
%CLADDINGREFRACTIONINDEX Calculate the refrection index of cladding (n2) in function 
%               of refraction index of core (n1) and delta. 
%              Refraction index of Cladding Equation:
%               n2=n1*(1-delta);
%   Detailed explanation goes here
    n2 = n1*(1-delta);
end

