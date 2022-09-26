$fn = 48;


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
		translate(v = [0, 50, 0]) {
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
						translate(v = [0, -5.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -2.0000000000]) {
									cube(center = true, size = [42, 10, 4]);
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
						translate(v = [15, -5.0000000000, -36]) {
							rotate(a = [0, 0, 90]) {
								hull() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [1.5000000000, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 1.7000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-1.5000000000, 0, 0]) {
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
						translate(v = [-15, -5.0000000000, -36]) {
							rotate(a = [0, 0, 90]) {
								hull() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [1.5000000000, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 1.7000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-1.5000000000, 0, 0]) {
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
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [15, 5.0000000000, -36]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 29, r = 1.7000000000);
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [15, -5.0000000000, -36]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 29, r = 1.7000000000);
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-15, 5.0000000000, -36]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 29, r = 1.7000000000);
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-15, -5.0000000000, -36]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 29, r = 1.7000000000);
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [15, 5.0000000000, -7]) {
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
			translate(v = [15, -5.0000000000, -7]) {
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
			translate(v = [-15, 5.0000000000, -7]) {
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
			translate(v = [-15, -5.0000000000, -7]) {
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
			translate(v = [0, -5.0000000000, -18.0000000000]) {
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, -2.0000000000]) {
						cube(center = true, size = [44, 12, 4]);
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [15, -5.0000000000, -26.0000000000]) {
				rotate(a = [0, 0, 90]) {
					hull() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [1.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 2.7000000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-1.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 2.7000000000);
								}
							}
						}
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-15, -5.0000000000, -26.0000000000]) {
				rotate(a = [0, 0, 90]) {
					hull() {
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [1.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 2.7000000000);
								}
							}
						}
						color(alpha = 1.0000000000, c = "Gold") {
							translate(v = [-1.5000000000, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 2.7000000000);
								}
							}
						}
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [15, 5.0000000000, -36]) {
				rotate(a = [180, 0, 0]) {
					color(alpha = 1.0000000000, c = "Gold") {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -1.5000000000]) {
									cylinder(center = true, h = 3.0000000000, r = 3.0500000000);
								}
							}
						}
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [-15, 5.0000000000, -36]) {
				rotate(a = [180, 0, 0]) {
					color(alpha = 1.0000000000, c = "Gold") {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -1.5000000000]) {
									cylinder(center = true, h = 3.0000000000, r = 3.0500000000);
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
						#cube(center = true, size = [4, 20, 2]);
					}
				}
			}
		}
		color(alpha = 1.0000000000, c = "Gold") {
			translate(v = [0, -10.5000000000, -18.0000000000]) {
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 0, -5.0000000000]) {
						#cube(center = true, size = [4, 8, 10]);
					}
				}
			}
		}
	}
}