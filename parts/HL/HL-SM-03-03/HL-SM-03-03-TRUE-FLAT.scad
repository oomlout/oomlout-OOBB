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
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -36]) {
										linear_extrude(height = 36) {
											offset(r = 5) {
												square(center = true, size = [32.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 1.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -36]) {
										linear_extrude(height = 36) {
											offset(r = 5) {
												square(center = true, size = [32.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -1.5000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -36]) {
										linear_extrude(height = 36) {
											offset(r = 5) {
												square(center = true, size = [32.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
						translate(v = [60, 0, 0]) {
							difference() {
								union() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 5.3500000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -2.0000000000]) {
													cube(center = true, size = [20, 33, 4]);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, -4.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -2.0000000000]) {
													cube(center = true, size = [42, 13, 4]);
												}
											}
										}
									}
								}
								union() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, -7.2500000000, 0]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [1.2500000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 0.6000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-1.2500000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 0.6000000000);
																}
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 18, 0]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [1.2500000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 0.6000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-1.2500000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 0.6000000000);
																}
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 5.3750000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -2.0000000000]) {
													cube(center = true, size = [14, 24, 4]);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [15, -7.5000000000, -33.5000000000]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 1.7000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-0.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 1.7000000000);
																}
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-15, -7.5000000000, -33.5000000000]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 1.7000000000);
																}
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-0.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -250]) {
																	cylinder(h = 500, r = 1.7000000000);
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
						translate(v = [50, -50, 0]) {
							difference() {
								union() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -9]) {
													linear_extrude(height = 9) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 2.0100000000]);
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 3, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -9]) {
													linear_extrude(height = 9) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 2.0100000000]);
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 6, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -9]) {
													linear_extrude(height = 9) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 2.0100000000]);
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, -3, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -9]) {
													linear_extrude(height = 9) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 2.0100000000]);
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, -6, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -9]) {
													linear_extrude(height = 9) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 2.0100000000]);
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, -9]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -0.5000000000]) {
													cylinder(center = true, h = 1, r = 11.5000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, -10]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -1.2750000000]) {
													cylinder(center = true, h = 2.5500000000, r = 9.9000000000);
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
										translate(v = [0.0000000000, 0.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.2500000000);
												}
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
										translate(v = [-15.0000000000, 0, -3]) {
											rotate(a = [0, 0, 90]) {
												union() {
													translate(v = [0, 0, -6]) {
														linear_extrude(height = 6) {
															polygon(points = [[5.4966632378, 3.1735000000], [0.0000000000, 6.3470000000], [-5.4966632378, 3.1735000000], [-5.4966632378, -3.1735000000], [-0.0000000000, -6.3470000000], [5.4966632378, -3.1735000000]]);
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 11.0000000000, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -3.0000000000]) {
																	cube(center = true, size = [11, 22, 6]);
																}
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [15.0000000000, 0, -3]) {
											rotate(a = [0, 0, 270]) {
												union() {
													translate(v = [0, 0, -6]) {
														linear_extrude(height = 6) {
															polygon(points = [[5.4966632378, 3.1735000000], [0.0000000000, 6.3470000000], [-5.4966632378, 3.1735000000], [-5.4966632378, -3.1735000000], [-0.0000000000, -6.3470000000], [5.4966632378, -3.1735000000]]);
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [0, 11.0000000000, 0]) {
															rotate(a = [0, 0, 0]) {
																translate(v = [0, 0, -3.0000000000]) {
																	cube(center = true, size = [11, 22, 6]);
																}
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [6.5000000000, 0, -12.5500000000]) {
											rotate(a = [0, 0, 90]) {
												cylinder(h = 10, r = 0.8750000000);
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-6.5000000000, 0, -12.5500000000]) {
											rotate(a = [0, 0, 90]) {
												cylinder(h = 10, r = 0.8750000000);
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 6.5000000000, -12.5500000000]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [1.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 10, r = 0.8750000000);
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-1.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 10, r = 0.8750000000);
															}
														}
													}
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, -6.5000000000, -12.5500000000]) {
											rotate(a = [0, 0, 90]) {
												hull() {
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [1.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 10, r = 0.8750000000);
															}
														}
													}
													color(alpha = 1.0000000000, c = "Gold") {
														translate(v = [-1.5000000000, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 10, r = 0.8750000000);
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
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.2500000000);
									}
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, 7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 1.7000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, -7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 1.7000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, 7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 1.7000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, -7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 1.7000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, 7.5000000000, -7]) {
												rotate(a = [0, 0, 90]) {
													union() {
														translate(v = [0, 0, -3.5000000000]) {
															linear_extrude(height = 3.5000000000) {
																polygon(points = [[2.9648379699, 1.7117500000], [0.0000000000, 3.4235000000], [-2.9648379699, 1.7117500000], [-2.9648379699, -1.7117500000], [-0.0000000000, -3.4235000000], [2.9648379699, -1.7117500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		cube(center = true, size = [6.0000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, -7.5000000000, -7]) {
												rotate(a = [0, 0, 90]) {
													union() {
														translate(v = [0, 0, -3.5000000000]) {
															linear_extrude(height = 3.5000000000) {
																polygon(points = [[2.9648379699, 1.7117500000], [0.0000000000, 3.4235000000], [-2.9648379699, 1.7117500000], [-2.9648379699, -1.7117500000], [-0.0000000000, -3.4235000000], [2.9648379699, -1.7117500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		cube(center = true, size = [6.0000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, 7.5000000000, -7]) {
												rotate(a = [0, 0, 270]) {
													union() {
														translate(v = [0, 0, -3.5000000000]) {
															linear_extrude(height = 3.5000000000) {
																polygon(points = [[2.9648379699, 1.7117500000], [0.0000000000, 3.4235000000], [-2.9648379699, 1.7117500000], [-2.9648379699, -1.7117500000], [-0.0000000000, -3.4235000000], [2.9648379699, -1.7117500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		cube(center = true, size = [6.0000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, -7.5000000000, -7]) {
												rotate(a = [0, 0, 270]) {
													union() {
														translate(v = [0, 0, -3.5000000000]) {
															linear_extrude(height = 3.5000000000) {
																polygon(points = [[2.9648379699, 1.7117500000], [0.0000000000, 3.4235000000], [-2.9648379699, 1.7117500000], [-2.9648379699, -1.7117500000], [-0.0000000000, -3.4235000000], [2.9648379699, -1.7117500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		cube(center = true, size = [6.0000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
									union();
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, -2.0000000000]) {
								rotate(a = [0, 0, 0]) {
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [0, 0, 2.0000000000]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -2.0000000000]) {
														cylinder(center = true, h = 4, r = 13.6000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [0, 0, 16.0000000000]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -16.0000000000]) {
														cylinder(center = true, h = 32, r = 12.0000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union();
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15.0000000000, -15.0000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													hull() {
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15.0000000000, -15.0000000000, 0]) {
												rotate(a = [0, 0, 90]) {
													hull() {
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15.0000000000, 15.0000000000, 0]) {
												rotate(a = [0, 0, 180]) {
													hull() {
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15.0000000000, 15.0000000000, 0]) {
												rotate(a = [0, 0, 270]) {
													hull() {
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, 0, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
																	}
																}
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [-15, -15, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -3.0000000000]) {
																		cylinder(center = true, h = 6, r = 6.0000000000);
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
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 5.3750000000, -7]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -14.5000000000]) {
										cube(center = true, size = [14, 28, 29]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 5.3750000000, -14.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -4.0000000000]) {
										cube(center = true, size = [14, 34.5000000000, 8]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -4.5000000000, -18.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.0000000000]) {
										cube(center = true, size = [44, 15, 4]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 5.3500000000, -18.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -2.0000000000]) {
										cube(center = true, size = [21, 35, 4]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, -5.0000000000, -28.0000000000]) {
								rotate(a = [0, 0, 90]) {
									hull() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [1.5000000000, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 6, r = 3.2500000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-1.5000000000, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 6, r = 3.2500000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15, -5.0000000000, -28.0000000000]) {
								rotate(a = [0, 0, 90]) {
									hull() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [1.5000000000, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 6, r = 3.2500000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-1.5000000000, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 6, r = 3.2500000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15, 5.0000000000, -36]) {
								rotate(a = [180, 0, 90]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -3.0000000000]) {
													cylinder(center = true, h = 6, r = 3.0500000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 5.0000000000, -36]) {
								rotate(a = [180, 0, 90]) {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -3.0000000000]) {
													cylinder(center = true, h = 6, r = 3.0500000000);
												}
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -12.5000000000, -18.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -1.0000000000]) {
										cube(center = true, size = [4, 20, 2]);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, -10.5000000000, -18.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -5.0000000000]) {
										cube(center = true, size = [4, 8, 10]);
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