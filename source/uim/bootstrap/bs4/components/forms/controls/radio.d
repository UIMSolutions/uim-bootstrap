module uim.bootstrap.bs4.components.forms.controls.radio;

import uim.bootstrap; 

class DBS4Radio : DBS4Input {
	mixin(H5This!("", null, `["type":"radio"]`));
}
mixin(H5Calls!("BS4Radio"));
unittest {
	assert(Assert(BS4Radio, `<input class="form-control" type="radio">`));
}