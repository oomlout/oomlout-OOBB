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
												square(center = true, size = [32.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
					}
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, 9.4450000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, 9.4450000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, 9.4450000000, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, 9.4450000000, -5.5000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, 9.4450000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, 9.4450000000, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, 9.4450000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, 9.4450000000, 5.5000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, -9.4450000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, -9.4450000000, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, -9.4450000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [9.4450000000, -9.4450000000, 5.5000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, -9.4450000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, -9.4450000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, -9.4450000000, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-9.4450000000, -9.4450000000, -5.5000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [0, 0, 3.0000000000]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -3.0000000000]) {
														cylinder(center = true, h = 6, r = 8.5000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [0, 0, 50.0000000000]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -50.0000000000]) {
														cylinder(center = true, h = 100, r = 7.5000000000);
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
			}
		}
	}
}