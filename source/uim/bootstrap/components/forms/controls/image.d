module uim.bootstrap.components.forms.controls.image;

import uim.bootstrap; 

class DBS4InputImage : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"image"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputImage"));
///
unittest {
	assert(Assert(BS4InputImage, `<input class="form-control" type="image">`));
}