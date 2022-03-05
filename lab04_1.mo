model lab04_1

parameter Real w = sqrt(4.40);
parameter Real g = 0.00;
parameter Real x0 = 0;
parameter Real y0 = -1.5;

Real x(start = x0);
Real y(start = y0);

function f 
  input Real t;
  output Real result;
algorithm
  result := 0;
end f;

equation

der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end lab04_1;
