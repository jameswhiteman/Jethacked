// lsys_caster_set_point(Caster ID, Point ID, x, y);
var i;
global._lsys_caster_point_x[argument0, argument1] = argument2 * global._lsys_quality;
global._lsys_caster_point_y[argument0, argument1] = argument3 * global._lsys_quality;
global._lsys_caster_cx[argument0] = 0;
global._lsys_caster_cy[argument0] = 0;
for (i = 0; i < global._lsys_caster_points[argument0]; i += 1)
{
    global._lsys_caster_cx[argument0] += global._lsys_caster_point_x[argument0, i];
    global._lsys_caster_cy[argument0] += global._lsys_caster_point_y[argument0, i];
}
global._lsys_caster_cx[argument0] /= global._lsys_caster_points[argument0];
global._lsys_caster_cy[argument0] /= global._lsys_caster_points[argument0];
for (i = 0; i < global._lsys_lights; i += 1)
{
    if (global._lsys_light_deleted[i])
        continue;
    if (lsys_caster_check_inside(argument0, i))
        global._lsys_light_changed[i] = true;
}
return global._lsys_caster_points[argument0];
