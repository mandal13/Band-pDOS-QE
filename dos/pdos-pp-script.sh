name="WS2"
module load quantum-espresso/6.6

sumpdos.x *\(W\)* > ${name}_W_tot.dat
sumpdos.x *\(S\)* > ${name}_S_tot.dat

sumpdos.x *\(S\)*\(s* > ${name}_S_s.dat
sumpdos.x *\(S\)*\(p* > ${name}_S_p.dat

sumpdos.x *\(W\)*\(s* > ${name}_W_s.dat
sumpdos.x *\(W\)*\(p* > ${name}_W_p.dat
sumpdos.x *\(W\)*\(d* > ${name}_W_d.dat

