module uim.bootstrap.components.forms.controls.url;

import uim.bootstrap; 

class DBS4InputUrl : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"url"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputUrl"));
///
unittest {
	assert(BS4InputUrl == `<input class="form-control" type="url">`);
}