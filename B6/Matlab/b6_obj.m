function [objective,constraints,R] = b6_obj(par)

mask = [1 1 1 1 ...
...
        1 1 1 1 ...
        1 1 1 1 ...
        1 1 1 1 ...
        1 1 1 1 ...
...   
        1 1 1 1 ...
        1 1 1 0 ... 
        1 1 1 0 ... 
        1 1 1 0 ... 
...
        0 0 0 0 ... 
...     
        0 0 0 0 ... 
...     
        0 0 0 0 ... 
...     
        1 1 1 1 ... 
...     
        0 0 0 0];  
 
inputfile = 'dm_hkgn53_wls_5_003';

[objective,R] = b6(par, mask, inputfile);

R=reshape(R,numel(R),1);
constraints = 0;

return

