function f = RastrignTest3D(x,y)
    A=10;
    n=100;
    x1=x;
	y1=y;
	dx=abs(5.12-x)/n;
	dy=abs(5.12-y)/n;
	f=A*n;
    for i=1:n
        x=x1+(dx);
        y=y1+(dy);
        f=f+(x^2)-(A*cos(2*pi*x))+(y^2)-(A*cos(2*pi*y));
    end
end
