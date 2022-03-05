model lab04_3

parameter Real w = sqrt(3.30);
parameter Real g = 2.00;
parameter Real x0 = 0;
parameter Real y0 = -1.5;

Real x(start = x0);
Real y(start = y0);

function f 
  input Real t;
  output Real result;
algorithm
  result := 3.3*cos(2*t);
end f;

equation

der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end lab04_3;
