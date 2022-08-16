module uim.bootstrap.bs4.components.forms.customcontrols.fileinput;

@safe: 
import uim.bootstrap;

class DBS4CustomFileInput : DBS4Obj {
	mixin(H5This!("INPUT", ["custom-file-input"]));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}

mixin(H5Calls!"BS4CustomFileInput");
version(test_uim_bootstrap) { unittest {
	assert(BS4CustomFileInput, `<input class="custom-file-input">`);
}
