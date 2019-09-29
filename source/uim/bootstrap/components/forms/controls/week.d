module uim.bootstrap.components.forms.controls.week;

import uim.bootstrap; 

class DBS4InputWeek : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"week"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputWeek"));
///
unittest {
	assert(BS4InputWeek == `<input class="form-control" type="week">`);
}