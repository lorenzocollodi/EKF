function res = UWB_system(p1, p2, p3, p4, d1, d2, d3, d4, x)
%MECHANIZATION Summary of this function goes here
res(1) = (p1(1)-x(1))^2 + (p1(2)-x(2))^2 + (p1(3)-x(3))^2 - d1^2;
res(2) = (p2(1)-x(1))^2 + (p2(2)-x(2))^2 + (p2(3)-x(3))^2 - d2^2;
res(3) = (p3(1)-x(1))^2 + (p3(2)-x(2))^2 + (p3(3)-x(3))^2 - d3^2;
res(4) = (p4(1)-x(1))^2 + (p4(2)-x(2))^2 + (p4(3)-x(3))^2 - d4^2;
end
