module uim.bootstrap.bs5.basic.components.forms.customcontrols.fileinput;

@safe: 
import uim.bootstrap;

class DBS5CustomFileInput : DBS5Obj {
	mixin(H5This!("INPUT", ["custom-file-input"]));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}

mixin(H5Calls!"BS5CustomFileInput");
unittest {
	assert(BS5CustomFileInput, `<input class="custom-file-input">`));
}
