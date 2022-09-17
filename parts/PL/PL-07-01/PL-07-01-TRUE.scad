$fn = 48;


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
											square(center = true, size = [92.0100000000, 2.0100000000]);
										}
									}
								}
							}
						}
					}
				}
				union() {
					color(alpha = 1.0000000000, c = "Gold") {
						translate(v = [-45.0000000000, 0.0000000000, 0]) {
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
						translate(v = [-15.0000000000, 0.0000000000, 0]) {
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
						translate(v = [15.0000000000, 0.0000000000, 0]) {
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
						translate(v = [45.0000000000, 0.0000000000, 0]) {
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