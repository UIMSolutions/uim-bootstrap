module uim.bootstrap.components.forms.controls.checkbox;

import uim.bootstrap; 

class DBS4InputCheckbox : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"checkbox"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputCheckbox"));
///
unittest {
	assert(BS4InputCheckbox == `<input class="form-control" type="checkbox">`);
}