module uim.bootstrap.components.forms.controls.search;

import uim.bootstrap; 

class DBS4InputSearch : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"search"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputSearch"));
///
unittest {
	assert(BS4InputSearch == `<input class="form-control" type="search">`);	
}