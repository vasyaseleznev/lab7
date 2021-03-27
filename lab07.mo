model lab07

parameter Real N= 741; // максимальное количество людей, которых может заинтересовать товар 
parameter Real n0= 4; // количество людей, знающих о товаре в начальный момент времени 
Real n(start=n0); //количество людей,знающих о товаре

function k
  input Real t;
  output Real result;
algorithm
  //result := 0.63; //для 1 случая
  //result := 0.000035; //для 2 случая
  //result := 0.65*sin(7*t); //для 3 случая
  result := sin(t);
end k;

function p 
  input Real t;
  output Real result;
algorithm
  //result := 0.0013; //для 1 случая
 //result := 0.98; //для 2 случая
  //result := cos(3*t); //для 3 случая
  result := cos(t);
end p;

equation

der(n) = (k(time) + p(time) * n) * (N-n);

end lab07;
