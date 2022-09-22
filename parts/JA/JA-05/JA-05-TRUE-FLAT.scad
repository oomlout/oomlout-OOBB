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
												square(center = true, size = [62.0100000000, 2.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [1.5000000000, 0, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -12]) {
										linear_extrude(height = 12) {
											offset(r = 5) {
												square(center = true, size = [62.0100000000, 2.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-1.5000000000, 0, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -12]) {
										linear_extrude(height = 12) {
											offset(r = 5) {
												square(center = true, size = [62.0100000000, 2.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -6.7500000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [75, 13.5000000000, 12]);
									}
								}
							}
						}
					}
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, 0.0000000000, 0]) {
								rotate(a = [90, 0, 0]) {
									cylinder(h = 13.5000000000, r = 3.2500000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 0.0000000000, 0]) {
								rotate(a = [90, 0, 0]) {
									cylinder(h = 13.5000000000, r = 3.2500000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, 0.0000000000, 0]) {
								rotate(a = [90, 0, 0]) {
									cylinder(h = 13.5000000000, r = 3.2500000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 0.0000000000, 0]) {
								rotate(a = [90, 0, 0]) {
									cylinder(h = 13.5000000000, r = 3.2500000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, 0.0000000000, 0]) {
								rotate(a = [90, 0, 0]) {
									cylinder(h = 13.5000000000, r = 3.2500000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, -8, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [11, 5.5000000000, 12]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, -8, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [11, 5.5000000000, 12]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, -8, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [11, 5.5000000000, 12]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, -8, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [11, 5.5000000000, 12]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, -8, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -6.0000000000]) {
										cube(center = true, size = [11, 5.5000000000, 12]);
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