module uim.bootstrap.bs5.classes.simple.components.forms.controls.image;

import uim.bootstrap; 

class DBS5InputImage : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"image"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputImage"));
///
unittest {
	assert(Assert(BS5InputImage, `<input class="form-control" type="image">`));
}