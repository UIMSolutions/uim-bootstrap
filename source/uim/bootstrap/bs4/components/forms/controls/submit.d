module uim.bootstrap.bs4.components.forms.controls.submit;

@safe: 
import uim.bootstrap; 

class DBS4InputSubmit : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"submit"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(H5Calls!("BS4InputSubmit"));
///
unittest {
	assert(Assert(BS4InputSubmit, `<input class="form-control" type="submit">`));
}