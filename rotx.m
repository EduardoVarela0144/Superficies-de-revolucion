function rot_x = rotx(angle_degree)
    rot_x = [1               0                      0
             0      cosd(angle_degree)     -sind(angle_degree)
             0      sind(angle_degree)     cosd(angle_degree) ];
end