$fn = 48;


rotate(a = [0, 180, 0]) {
	union() {
		translate(v = [0, 0, 0]) {
			intersection() {
				color(alpha = 1.0000000000, c = "Gold") {
					translate(v = [0, 0, 6.0000000000]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, -3.0000000000]) {
								cube(center = true, size = [1000, 1000, 6.0000000000]);
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
												square(center = true, size = [32.0100000000, 2.0100000000]);
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
												square(center = true, size = [32.0100000000, 2.0100000000]);
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
												square(center = true, size = [32.0100000000, 2.0100000000]);
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
										cube(center = true, size = [45, 13.5000000000, 12]);
									}
								}
							}
						}
					}
					union() {
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
							translate(v = [-7.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-7.5000000000, 0, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-7.5000000000, 0, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-7.5000000000, 0, 5.5000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [7.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.7000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [7.5000000000, 0, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [7.5000000000, 0, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [7.5000000000, 0, -5.5000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -2.5000000000]) {
										linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, -10, 0]) {
								rotate(a = [90, 30, 0]) {
									translate(v = [0, 0, -6]) {
										linear_extrude(height = 6) {
											polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0.0000000000, -10, 0]) {
								rotate(a = [90, 30, 0]) {
									translate(v = [0, 0, -6]) {
										linear_extrude(height = 6) {
											polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, -10, 0]) {
								rotate(a = [90, 30, 0]) {
									translate(v = [0, 0, -6]) {
										linear_extrude(height = 6) {
											polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 6.0000000000]) {
			rotate(a = [180, 0, 0]) {
				translate(v = [0, 33, 6.0000000000]) {
					intersection() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, 0.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -3.0000000000]) {
										cube(center = true, size = [1000, 1000, 6.0000000000]);
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
														square(center = true, size = [32.0100000000, 2.0100000000]);
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
														square(center = true, size = [32.0100000000, 2.0100000000]);
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
														square(center = true, size = [32.0100000000, 2.0100000000]);
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
												cube(center = true, size = [45, 13.5000000000, 12]);
											}
										}
									}
								}
							}
							union() {
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
									translate(v = [-7.5000000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.7000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-7.5000000000, 0, -6.0000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-7.5000000000, 0, 6.0000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -2.5000000000]) {
												linear_extrude(height = 2.5000000000) {
													polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-7.5000000000, 0, 5.5000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -2.5000000000]) {
												linear_extrude(height = 2.5000000000) {
													polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [7.5000000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.7000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [7.5000000000, 0, 6.0000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.7000000000, r2 = 3.3500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [7.5000000000, 0, -6.0000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -2.5000000000]) {
												linear_extrude(height = 2.5000000000) {
													polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [7.5000000000, 0, -5.5000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -2.5000000000]) {
												linear_extrude(height = 2.5000000000) {
													polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-15.0000000000, -10, 0]) {
										rotate(a = [90, 30, 0]) {
											translate(v = [0, 0, -6]) {
												linear_extrude(height = 6) {
													polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [0.0000000000, -10, 0]) {
										rotate(a = [90, 30, 0]) {
											translate(v = [0, 0, -6]) {
												linear_extrude(height = 6) {
													polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [15.0000000000, -10, 0]) {
										rotate(a = [90, 30, 0]) {
											translate(v = [0, 0, -6]) {
												linear_extrude(height = 6) {
													polygon(points = [[5.1961524227, 3.0000000000], [0.0000000000, 6.0000000000], [-5.1961524227, 3.0000000000], [-5.1961524227, -3.0000000000], [-0.0000000000, -6.0000000000], [5.1961524227, -3.0000000000]]);
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