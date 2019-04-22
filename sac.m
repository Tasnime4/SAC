function P =SAC(sbox,nb)
v1=mat2vect(sbox);
E=[];
for i=7:-1:0
  E=[E 2^i];
end
for i= 1:nb
    for j=1:nb
        x=0;
        for k=0:2^nb-1
            x=x+bitxor(bitget(v1(k+1),j),bitget(v1(bitxor(k,E(i))+1),j));
        end
        P(i,j)=x/2^nb;
    end
end
