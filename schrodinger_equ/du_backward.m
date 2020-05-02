function du = du_backward(xl,ul)
h = xl(2) - xl(1);
du = (1/2*h)*(ul(1000-2)-4*ul(1000-1)+3*ul(1000));
