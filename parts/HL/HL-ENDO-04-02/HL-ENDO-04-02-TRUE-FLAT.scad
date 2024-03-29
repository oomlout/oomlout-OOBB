$fn = 48;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				color(alpha = 1.0000000000, c = "Gold") {
					translate(v = [0, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							color(alpha = 1.0000000000, c = "Gold") {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										translate(v = [0, 0, -0.0500000000]) {
											cube(center = true, size = [1000, 1000, 0.1000000000]);
										}
									}
								}
							}
						}
					}
				}
				difference() {
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -12]) {
										linear_extrude(height = 12) {
											offset(r = 5) {
												square(center = true, size = [47.0100000000, 17.0100000000]);
											}
										}
									}
								}
							}
						}
					}
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-22.5000000000, 7.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-7.5000000000, 7.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [7.5000000000, 7.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [22.5000000000, 7.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 5, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 5, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 5, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.4000000000]) {
										linear_extrude(height = 2.4000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 5, -5.5000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.4000000000]) {
										linear_extrude(height = 2.4000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -10, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -10, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -10, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.4000000000]) {
										linear_extrude(height = 2.4000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -10, -5.5000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.4000000000]) {
										linear_extrude(height = 2.4000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -2.5000000000, 0]) {
								rotate(a = [0, 90, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [27.0000000000, -2.5000000000, 0]) {
								rotate(a = [0, 90, 0]) {
									translate(v = [0, 0, -22.5000000000]) {
										cylinder(center = true, h = 45, r = 4.2500000000);
									}
								}
							}
						}
					}
				}
			}
		}
	}
}