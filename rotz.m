function rot_z = rotz(angle_degree)
    rot_z = [ cosd(angle_degree)   -sind(angle_degree)       0
              sind(angle_degree)   cosd(angle_degree)        0
                      0                   1                  0];
end