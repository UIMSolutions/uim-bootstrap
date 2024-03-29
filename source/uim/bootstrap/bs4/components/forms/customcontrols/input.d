﻿module uim.bootstrap.bs4.components.forms.customcontrols.input;

@safe: 
import uim.bootstrap;

class DBS4CustomInput : DBS4Obj {
	mixin(H5This!("INPUT", ["custom-control-input"], null, true));
	override void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!"BS4CustomInput");

version(test_uim_bootstrap) { unittest {
	assert(BS4CustomInput);
	assert(BS4CustomInput == `<input class="custom-control-input">`);
}}
