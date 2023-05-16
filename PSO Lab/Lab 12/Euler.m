function  E=Euler(f,xi,xf,yi,m)
h=(xf-xi)/m;
y=zeros(m+1,1);
x=(xi:h:xf)';
y(1)=yi;
for j=1:m
    y(j+1)=y(j)+h*f(x(j),y(j));
end;
   E=[x,y]