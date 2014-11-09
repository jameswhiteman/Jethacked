//min, max

view_xview[0] += random_range(shake_min, shake_max) * choose(1, -1)
view_yview[0] += random_range(shake_min, shake_max) * choose(1, -1)

shake_min /= shake_decay
shake_max /= shake_decay
