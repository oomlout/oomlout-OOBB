$fn = 48;


rotate(a = [0, 180, 0]) {
	union() {
		translate(v = [0, 0, 0]) {
			intersection() {
				color(alpha = 1.0000000000, c = "Gold") {
					translate(v = [0, 0, 6.0000000000]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, -3.0000000000]) {
								cube(center = true, size = [100, 100, 6.0000000000]);
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
												square(center = true, size = [62.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
					}
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-30.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.3030000000, -5.3030000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.3030000000, 5.3030000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.0000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [16, 16, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [16, 16, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [16, 16, -6.0000000000]) {
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
							translate(v = [16, 16, -5.5000000000]) {
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
							translate(v = [-16, 16, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-16, 16, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-16, 16, 6.0000000000]) {
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
							translate(v = [-16, 16, 5.5000000000]) {
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
							translate(v = [16, -16, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [16, -16, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [16, -16, 6.0000000000]) {
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
							translate(v = [16, -16, 5.5000000000]) {
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
							translate(v = [-16, -16, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-16, -16, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-16, -16, -6.0000000000]) {
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
							translate(v = [-16, -16, -5.5000000000]) {
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
							translate(v = [5.3030000000, 5.3030000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.3030000000, 5.3030000000, -6.0000000000]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [5.3030000000, 5.3030000000, 6.0000000000]) {
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
							translate(v = [5.3030000000, 5.3030000000, 5.5000000000]) {
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
							translate(v = [-5.3030000000, -5.3030000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 1.5000000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.3030000000, -5.3030000000, 6.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.7000000000]) {
										cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-5.3030000000, -5.3030000000, -6.0000000000]) {
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
							translate(v = [-5.3030000000, -5.3030000000, -5.5000000000]) {
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
										difference() {
											color(alpha = 1.0000000000, c = "Gold") {
												translate(v = [0, 0, 50.0000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, -50.0000000000]) {
															cylinder(center = true, h = 100, r = 17.0000000000);
														}
													}
												}
											}
											color(alpha = 1.0000000000, c = "Gold") {
												translate(v = [0, 0, 50.0000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, -50.0000000000]) {
															cylinder(center = true, h = 100, r = 14.0000000000);
														}
													}
												}
											}
										}
										difference() {
											color(alpha = 1.0000000000, c = "Gold") {
												translate(v = [0, 0, 3.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, -3.5000000000]) {
															cylinder(center = true, h = 7, r = 18.5000000000);
														}
													}
												}
											}
											color(alpha = 1.0000000000, c = "Gold") {
												translate(v = [0, 0, 3.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, -3.5000000000]) {
															cylinder(center = true, h = 7, r = 12.5000000000);
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
		translate(v = [0, 0, 6.0000000000]) {
			rotate(a = [180, 0, 0]) {
				translate(v = [0, 45, 6.0000000000]) {
					intersection() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, 0.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -3.0000000000]) {
										cube(center = true, size = [100, 100, 6.0000000000]);
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
														square(center = true, size = [62.0100000000, 32.0100000000]);
													}
												}
											}
										}
									}
								}
							}
							union() {
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-30.0000000000, -15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-30.0000000000, 0.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-30.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [30.0000000000, -15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [30.0000000000, 0.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [30.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [5.3030000000, -5.3030000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-5.3030000000, 5.3030000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.0000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [16, 16, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [16, 16, 6.0000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [16, 16, -6.0000000000]) {
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
									translate(v = [16, 16, -5.5000000000]) {
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
									translate(v = [-16, 16, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-16, 16, -6.0000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-16, 16, 6.0000000000]) {
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
									translate(v = [-16, 16, 5.5000000000]) {
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
									translate(v = [16, -16, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [16, -16, -6.0000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [16, -16, 6.0000000000]) {
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
									translate(v = [16, -16, 5.5000000000]) {
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
									translate(v = [-16, -16, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-16, -16, 6.0000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-16, -16, -6.0000000000]) {
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
									translate(v = [-16, -16, -5.5000000000]) {
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
									translate(v = [5.3030000000, 5.3030000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [5.3030000000, 5.3030000000, -6.0000000000]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [5.3030000000, 5.3030000000, 6.0000000000]) {
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
									translate(v = [5.3030000000, 5.3030000000, 5.5000000000]) {
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
									translate(v = [-5.3030000000, -5.3030000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 1.5000000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-5.3030000000, -5.3030000000, 6.0000000000]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -1.7000000000]) {
												cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-5.3030000000, -5.3030000000, -6.0000000000]) {
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
									translate(v = [-5.3030000000, -5.3030000000, -5.5000000000]) {
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
												difference() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 0, 50.0000000000]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -50.0000000000]) {
																	cylinder(center = true, h = 100, r = 17.0000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 0, 50.0000000000]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -50.0000000000]) {
																	cylinder(center = true, h = 100, r = 14.0000000000);
																}
															}
														}
													}
												}
												difference() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 0, 3.5000000000]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -3.5000000000]) {
																	cylinder(center = true, h = 7, r = 18.5000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 0, 3.5000000000]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -3.5000000000]) {
																	cylinder(center = true, h = 7, r = 12.5000000000);
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
		}
	}
}