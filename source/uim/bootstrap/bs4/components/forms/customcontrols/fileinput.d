module uim.bootstrap.bs4.components.forms.customcontrols.fileinput;

@safe: 
import uim.bootstrap;

class DBS4CustomFileInput : DBS4Obj {
	mixin(H5This!("INPUT", ["custom-file-input"]));
	override public void _init() {
		super._init;
		_single = true;
	}
}

mixin(H5Calls!"BS4CustomFileInput");
unittest {
	assert(Assert(BS4CustomFileInput, `<input class="custom-file-input">`));
}
