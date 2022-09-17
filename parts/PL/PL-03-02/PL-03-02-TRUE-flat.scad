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
						translate(v = [0, 0, 0]) {
							difference() {
								union() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -3]) {
													linear_extrude(height = 3) {
														offset(r = 5) {
															square(center = true, size = [32.0100000000, 17.0100000000]);
														}
													}
												}
											}
										}
									}
								}
								union() {
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-15.0000000000, -7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [-15.0000000000, 7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0.0000000000, -7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [0.0000000000, 7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [15.0000000000, -7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
												}
											}
										}
									}
									color(alpha = 1.0000000000, c = "Gold") {
										translate(v = [15.0000000000, 7.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, -250]) {
													cylinder(h = 500, r = 3.0000000000);
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
	}
}