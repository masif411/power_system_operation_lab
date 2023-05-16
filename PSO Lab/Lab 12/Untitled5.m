f=@ (x,y) (x^2-y^2) *sin(x)
xi=input('Enter the initial value: xi=');
xf=input('Enter the final value: xf=');
m=input('enter the number of step: ');
yi=input('Enter the initial value: yi=');
y=Euler(f,xi,xf,yi,m);
plot(y(:,1),y(:,2))