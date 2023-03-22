function volume_HS = Volume_Hollow_sphere(radius_out, radius_in)

volume_HS = (4*pi/3)* (radius_out.^3 - radius_in.^3);
