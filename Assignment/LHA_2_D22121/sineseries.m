function Value_sin = sineseries(x,n)

m = 0:n;
Value_sin1 = (((-1).^m).*x.^(2*m+1))./ (factorial(2*m+1));
Value_sin = sum(Value_sin1);