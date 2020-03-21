module uim.bootstrap.components.forms.customcontrols.fileinput;

import uim.bootstrap;

class DBS4CustomFileInput : DBS4Obj {
	mixin(H5This!("INPUT", `["custom-file-input"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}

mixin(BS4Short!"CustomFileInput");
unittest {
	assert(Assert(BS4CustomFileInput, `<input class="custom-file-input">`));
}
