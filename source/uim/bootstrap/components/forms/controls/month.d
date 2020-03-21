module uim.bootstrap.components.forms.controls.month;

import uim.bootstrap; 

class DBS4InputMonth : DBS4Input {
	mixin(BS4This!(`["form-control"]`, `["type":"month"]`));
}
mixin(BS4Func!("InputMonth"));
///
unittest {
	assert(Assert(BS4InputMonth, `<input class="form-control" type="month">`));
}