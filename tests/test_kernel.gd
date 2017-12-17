extends Node2D

func _init():
	var n = AnlNoise.new()

	var i # instruction index
	i = n.pi()
	i = n.e()
	i = n.one()
	i = n.zero()
	i = n.point5()
	i = n.sqrt2()

	i = n.constant(10)
	var si = n.seed(123)

	i = n.value_basis(n.constant(AnlNoise.INTERP_NONE), si)
	i = n.gradient_basis(n.constant(AnlNoise.INTERP_LINEAR), si)
	i = n.simplex_basis(si)
	i = n.cellular_basis([0,1,2,3], [4,5,6,7],
	                     n.constant(AnlNoise.DISTANCE_MANHATTAN), si)

	var ci = n.constant(10)
	i = n.add(i, ci)
	i = n.subtract(i, ci)
	i = n.multiply(i, ci)
	i = n.divide(i, ci)
	i = n.maximum(i, ci)
	i = n.minimum(i, ci)
	i = n.abs(i)
	i = n.pow(i, ci)
	i = n.bias(i, ci)
	i = n.gain(i, ci)

	i = n.scale(i, ci)

	i = n.scale_x(i, ci)
	i = n.scale_y(i, ci)
	i = n.scale_z(i, ci)
	i = n.scale_w(i, ci)
	i = n.scale_u(i, ci)
	i = n.scale_v(i, ci)

	i = n.translate(i, ci)

	i = n.translate_x(i, ci)
	i = n.translate_y(i, ci)
	i = n.translate_z(i, ci)
	i = n.translate_w(i, ci)
	i = n.translate_u(i, ci)
	i = n.translate_v(i, ci)

	var ax = n.x()
	var ay = n.y()
	var az = n.z()

	i = n.rotate(i, ci, ax, ay, az)

	i = n.add_sequence(i, 10, 1)
	i = n.multiply_sequence(i, i, 2)
	i = n.max_sequence(i, 10, 3)
	i = n.min_sequence(i, 10, 4)

	i = n.mix(n.point5(), n.one(), i)
	i = n.select(n.point5(), n.one(), i, n.point5(), n.zero())
	i = n.clamp(i, n.point5(), n.one())

	i = n.cos(i)
	i = n.sin(i)
	i = n.tan(i)
	i = n.acos(i)
	i = n.asin(i)
	i = n.atan(i)

	i = n.tiers(i, n.constant(5))
	i = n.smooth_tiers(i, n.constant(10))

	i = n.x()
	i = n.y()
	i = n.z()
	i = n.w()
	i = n.u()
	i = n.v()

	i = n.dx(i, n.point5())
	i = n.dy(i, n.point5())
	i = n.dz(i, n.point5())
	i = n.dw(i, n.point5())
	i = n.du(i, n.point5())
	i = n.dv(i, n.point5())

	i = n.sigmoid(i, n.x(), n.y())

	i = n.radial()

	# Patterns

	i = n.hex_tile(si)
	i = n.hex_bump()

	i = n.color(Color(1, 0, 1))
	i = n.combine_rgba(n.point5(), n.constant(0.2), n.one(), n.one())

	i = n.scale_offset(i, 0.5, 0.0)

	i = n.fractal_layer(AnlNoise.BASIS_GRADIENT, n.constant(AnlNoise.INTERP_QUINTIC),
						[0, 1, 2, 3], # scale,freq,seed,angle
						[4, 5, 6, 7], # ax, ay, az
						true)

	i = n.ridged_layer(AnlNoise.BASIS_SIMPLEX, n.constant(AnlNoise.INTERP_HERMITE),
					   [0, 1, 2, 3], # scale,freq,seed,angle
					   [4, 5, 6, 7], # ax, ay, az
					   false)

	i = n.billow_layer(AnlNoise.BASIS_VALUE, n.constant(AnlNoise.INTERP_LINEAR),
					   [0, 1, 2, 3], # scale,freq,seed,angle
					   [4, 5, 6, 7], # ax, ay, az
					   true)

	i = n.fbm(AnlNoise.BASIS_VALUE, n.constant(AnlNoise.INTERP_LINEAR),
			  [2, 2, ci], # octaves, frequency, seed
			  false)

	i = n.ridged_multifractal(AnlNoise.BASIS_VALUE, n.constant(AnlNoise.INTERP_NONE),
							  [2, 2, ci], # octaves, frequency, seed
							  true)

	i = n.billow(AnlNoise.BASIS_GRADIENT, n.constant(AnlNoise.INTERP_HERMITE),
				 [2, 2, ci], # octaves, frequency, seed
				 true)

	# Kernel

	i = n.get_last_index()
