module uim.bootstrap.bs5.basic.components.forms.controls.image;

@safe: 
import uim.bootstrap; 

class DBS5InputImage : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"image"]`));
	override public void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputImage"));
///
unittest {
	assert(BS5InputImage, `<input class="form-control" type="image">`);
}