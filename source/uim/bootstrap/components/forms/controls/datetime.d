module uim.bootstrap.components.forms.controls.datetime;

import uim.bootstrap; 

class DBS4InputDateTime : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"datetime-local"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputDateTime"));
///
unittest {
	assert(Assert(BS4InputDateTime, `<input class="form-control" type="datetime-local">`));
}