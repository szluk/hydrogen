% Model of the hydrogen atom
% https://www.preprints.org/manuscript/202212.0045

clear all

Mel= 9.1093837015*10^-31; %[kg] electron mass
Mpr= 1.67262192369*10^-27;%[kg] proton mass
RH = 37*10^-12;           %[m] hydrogen covalent radius	
mP = 2.176434*10^-8;      %[kg] Planck mass
lP = 1.616255*10^-35;     %[m]  Planck length
al = (4*pi^3 + pi^2 + pi)^-1;     %   0.007297336344065

mel= Mel/mP;
mpr= Mpr/mP;
rH = RH/lP;

vp2 = (mel+mpr)*(1+al/(mel*mpr)) / rH + i*sqrt(al)*(mel^2-mpr^2)/(mel*mpr*rH)
vn2 = (mel+mpr)*(1-al/(mel*mpr)) / rH + i*sqrt(al)*(mel+mpr)^2/(mel*mpr*rH)

vp  = sqrt(vp2)
vn  = sqrt(vn2)

rp  = (mel+mpr)*(1+al/(mel*mpr)) / al^2 + i*sqrt(al)*(mel^2-mpr^2)/(mel*mpr*al^2);
Rp  = rp*lP
rn  = (mel+mpr)*(1-al/(mel*mpr)) / al^2 + i*sqrt(al)*(mel+mpr)^2/(mel*mpr*al^2);
Rn  = rn*lP

