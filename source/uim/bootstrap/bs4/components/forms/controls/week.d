module uim.bootstrap.bs4.components.forms.controls.week;

import uim.bootstrap; 

@safe: class DBS4InputWeek : DBS4Input {
	mixin(H5This!("", null, `["type":"week"]`));
}
mixin(H5Calls!("BS4InputWeek"));
///
unittest {
	assert(Assert(BS4InputWeek, `<input class="form-control" type="week">`));
}