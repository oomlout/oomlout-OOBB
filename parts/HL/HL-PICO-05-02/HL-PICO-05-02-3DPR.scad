$fn = 48;


difference() {
	union() {
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [0, 0, 0]) {
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, -4.5000000000]) {
						linear_extrude(height = 4.5000000000) {
							offset(r = 5) {
								square(center = true, size = [62.0100000000, 17.0100000000]);
							}
						}
					}
				}
			}
		}
	}
	union() {
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-30.0000000000, -7.5000000000, 0]) {
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, -250]) {
						cylinder(h = 500, r = 3.7500000000);
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-30.0000000000, 7.5000000000, 0]) {
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, -250]) {
						cylinder(h = 500, r = 3.7500000000);
					}
				}
			}
		}
		translate(v = [7.5000000000, 0, 0]) {
			rotate(a = [0, 0, 90]) {
				difference() {
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.7000000000, 23.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.7000000000, 23.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.7000000000, -23.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.7000000000, -23.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.7000000000, 23.5000000000, -4.5000000000]) {
								rotate(a = [180, 0, 0]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -0.8500000000]) {
													cylinder(center = true, h = 1.7000000000, r = 2.6000000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.7000000000, 23.5000000000, -4.5000000000]) {
								rotate(a = [180, 0, 0]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -0.8500000000]) {
													cylinder(center = true, h = 1.7000000000, r = 2.6000000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.7000000000, -23.5000000000, -4.5000000000]) {
								rotate(a = [180, 0, 0]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -0.8500000000]) {
													cylinder(center = true, h = 1.7000000000, r = 2.6000000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.7000000000, -23.5000000000, -4.5000000000]) {
								rotate(a = [180, 0, 0]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -0.8500000000]) {
													cylinder(center = true, h = 1.7000000000, r = 2.6000000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-8.8900000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.2500000000]) {
										cube(center = true, size = [3.5400000000, 51.8000000000, 2.5000000000]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [8.8900000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.2500000000]) {
										cube(center = true, size = [3.5400000000, 51.8000000000, 2.5000000000]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 24.1300000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.2500000000]) {
										cube(center = true, size = [8.6200000000, 3.5400000000, 2.5000000000]);
									}
								}
							}
						}
					}
					union();
				}
			}
		}
	}
}