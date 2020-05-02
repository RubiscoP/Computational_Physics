function du = du_forward(xr,ur)
h = xr(2) - xr(1);
du = (1/2*h)*(-ur(3)+4*ur(2)-3*ur(1));
