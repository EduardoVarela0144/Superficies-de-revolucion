function rot_y = roty(angle_degree)
    rot_y = [ cosd(angle_degree)       0     sind(angle_degree)
                     0                 1              0
             -sind(angle_degree)       0     cosd(angle_degree) ];
end