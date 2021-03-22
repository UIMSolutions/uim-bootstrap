module uim.bootstrap.bs5.basic.components.forms.controls.search;

import uim.bootstrap; 

@safe: class DBS5InputSearch : DBS5Input {
	mixin(H5This!("", null, `["type":"search"]`));
}
mixin(H5Calls!("BS5InputSearch"));
///
unittest {
	assert(Assert(BS5InputSearch, `<input class="form-control" type="search">`));	
}