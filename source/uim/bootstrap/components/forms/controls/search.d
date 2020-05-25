module uim.bootstrap.components.forms.controls.search;

import uim.bootstrap; 

class DBS4InputSearch : DBS4Input {
	mixin(H5This!("", null, `["type":"search"]`));
}
mixin(H5Calls!("BS4InputSearch"));
///
unittest {
	assert(Assert(BS4InputSearch, `<input class="form-control" type="search">`));	
}