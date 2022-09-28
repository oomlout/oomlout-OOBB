$fn = 48;


rotate(a = [0, 180, 0]) {
	union() {
		translate(v = [0, 0, 0]) {
			intersection() {
				color(alpha = 1.0000000000, c = "Gold") {
					translate(v = [0, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, -4.5000000000]) {
								cube(center = true, size = [1000, 1000, 9.0000000000]);
							}
						}
					}
				}
				difference() {
					union() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15, 0, -15]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -3]) {
										linear_extrude(height = 3) {
											offset(r = 5) {
												square(center = true, size = [62.0100000000, 32.0100000000]);
											}
										}
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -18]) {
										linear_extrude(height = 18) {
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
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [15.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [30.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [45.0000000000, -15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [45.0000000000, 0.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [45.0000000000, 15.0000000000, 0]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -250]) {
										cylinder(h = 500, r = 3.7500000000);
									}
								}
							}
						}
						#translate(v = [0, 0, -18]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union();
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [11, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -3.0000000000]) {
														#cube(center = true, size = [58, 22, 6]);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [11, 0, 5]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -20.0000000000]) {
														#cube(center = true, size = [42, 22, 40]);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [11, 0, 3]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -1.5000000000]) {
														#cube(center = true, size = [52, 3, 3]);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-14, 5, 0]) {
												rotate(a = [0, 0, 0]) {
													#cylinder(h = 12, r = 2.2000000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-14, -5, 0]) {
												rotate(a = [0, 0, 0]) {
													#cylinder(h = 12, r = 2.2000000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [36, -5, 0]) {
												rotate(a = [0, 0, 0]) {
													#cylinder(h = 12, r = 2.2000000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [36, 5, 0]) {
												rotate(a = [0, 0, 0]) {
													#cylinder(h = 12, r = 2.2000000000);
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-14, 5, 6]) {
												rotate(a = [0, 0, 90]) {
													union() {
														#translate(v = [0, 0, -3]) {
															linear_extrude(height = 3) {
																polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		#cube(center = true, size = [5.5000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-14, -5, 6]) {
												rotate(a = [0, 0, 90]) {
													union() {
														#translate(v = [0, 0, -3]) {
															linear_extrude(height = 3) {
																polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
															}
														}
														color(alpha = 1.0000000000, c = "Gold") {
															translate(v = [0, 5.5000000000, 0]) {
																rotate(a = [0, 0, 0]) {
																	translate(v = [0, 0, -1.5000000000]) {
																		#cube(center = true, size = [5.5000000000, 11.0000000000, 3]);
																	}
																}
															}
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [36, -5, 6]) {
												rotate(a = [0, 0, 90]) {
													#translate(v = [0, 0, -3]) {
														linear_extrude(height = 3) {
															polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
														}
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [36, 5, 6]) {
												rotate(a = [0, 0, 90]) {
													#translate(v = [0, 0, -3]) {
														linear_extrude(height = 3) {
															polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 90]) {
								difference() {
									union() {
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, 7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 2.2000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [15, -7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 2.2000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, 7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 2.2000000000);
													}
												}
											}
										}
										color(alpha = 1.0000000000, c = "Gold") {
											translate(v = [-15, -7.5000000000, 0]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -250]) {
														cylinder(h = 500, r = 2.2000000000);
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
											translate(v = [0, 0, 20.0000000000]) {
												rotate(a = [0, 0, 0]) {
													translate(v = [0, 0, -20.0000000000]) {
														cylinder(center = true, h = 40, r = 12.0000000000);
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
		translate(v = [0, 0, -9.0000000000]) {
			rotate(a = [180, 0, 0]) {
				translate(v = [0, 54, 9.0000000000]) {
					intersection() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [0, 0, -9.0000000000]) {
								rotate(a = [0, 0, 0]) {
									translate(v = [0, 0, -4.5000000000]) {
										cube(center = true, size = [1000, 1000, 9.0000000000]);
									}
								}
							}
						}
						difference() {
							union() {
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [15, 0, -15]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -3]) {
												linear_extrude(height = 3) {
													offset(r = 5) {
														square(center = true, size = [62.0100000000, 32.0100000000]);
													}
												}
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [0, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -18]) {
												linear_extrude(height = 18) {
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
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [-15.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [15.0000000000, -15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [15.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [30.0000000000, -15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [30.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [45.0000000000, -15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [45.0000000000, 0.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								color(alpha = 1.0000000000, c = "Gold") {
									translate(v = [45.0000000000, 15.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, -250]) {
												cylinder(h = 500, r = 3.7500000000);
											}
										}
									}
								}
								#translate(v = [0, 0, -18]) {
									rotate(a = [0, 0, 0]) {
										difference() {
											union();
											union() {
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [11, 0, 0]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -3.0000000000]) {
																#cube(center = true, size = [58, 22, 6]);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [11, 0, 5]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -20.0000000000]) {
																#cube(center = true, size = [42, 22, 40]);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [11, 0, 3]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -1.5000000000]) {
																#cube(center = true, size = [52, 3, 3]);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-14, 5, 0]) {
														rotate(a = [0, 0, 0]) {
															#cylinder(h = 12, r = 2.2000000000);
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-14, -5, 0]) {
														rotate(a = [0, 0, 0]) {
															#cylinder(h = 12, r = 2.2000000000);
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [36, -5, 0]) {
														rotate(a = [0, 0, 0]) {
															#cylinder(h = 12, r = 2.2000000000);
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [36, 5, 0]) {
														rotate(a = [0, 0, 0]) {
															#cylinder(h = 12, r = 2.2000000000);
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-14, 5, 6]) {
														rotate(a = [0, 0, 90]) {
															union() {
																#translate(v = [0, 0, -3]) {
																	linear_extrude(height = 3) {
																		polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
																	}
																}
																color(alpha = 1.0000000000, c = "Gold") {
																	translate(v = [0, 5.5000000000, 0]) {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [0, 0, -1.5000000000]) {
																				#cube(center = true, size = [5.5000000000, 11.0000000000, 3]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-14, -5, 6]) {
														rotate(a = [0, 0, 90]) {
															union() {
																#translate(v = [0, 0, -3]) {
																	linear_extrude(height = 3) {
																		polygon(points = [[2.7483316189, 1.5867500000], [0.0000000000, 3.1735000000], [-2.7483316189, 1.5867500000], [-2.7483316189, -1.5867500000], [-0.0000000000, -3.1735000000], [2.7483316189, -1.5867500000]]);
																	}
																}
																color(alpha = 1.0000000000, c = "Gold") {
																	translate(v = [0, 5.5000000000, 0]) {
																		rotate(a = [0, 0, 0]) {
																			translate(v = [0, 0, -1.5000000000]) {
																				#cube(center = true, size = [5.5000000000, 11.0000000000, 3]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [36, -5, 6]) {
														rotate(a = [0, 0, 90]) {
															#translate(v = [0, 0, -3]) {
																linear_extrude(height = 3) {
																	polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
																}
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [36, 5, 6]) {
														rotate(a = [0, 0, 90]) {
															#translate(v = [0, 0, -3]) {
																linear_extrude(height = 3) {
																	polygon(points = [[3.0231647808, 1.7454250000], [0.0000000000, 3.4908500000], [-3.0231647808, 1.7454250000], [-3.0231647808, -1.7454250000], [-0.0000000000, -3.4908500000], [3.0231647808, -1.7454250000]]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 90]) {
										difference() {
											union() {
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [15, 7.5000000000, 0]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -250]) {
																cylinder(h = 500, r = 2.2000000000);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [15, -7.5000000000, 0]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -250]) {
																cylinder(h = 500, r = 2.2000000000);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-15, 7.5000000000, 0]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -250]) {
																cylinder(h = 500, r = 2.2000000000);
															}
														}
													}
												}
												color(alpha = 1.0000000000, c = "Gold") {
													translate(v = [-15, -7.5000000000, 0]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -250]) {
																cylinder(h = 500, r = 2.2000000000);
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
													translate(v = [0, 0, 20.0000000000]) {
														rotate(a = [0, 0, 0]) {
															translate(v = [0, 0, -20.0000000000]) {
																cylinder(center = true, h = 40, r = 12.0000000000);
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