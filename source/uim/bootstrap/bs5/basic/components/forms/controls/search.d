module uim.bootstrap.bs5.basic.components.forms.controls.search;

@safe: 
import uim.bootstrap; 

class DBS5InputSearch : DBS5Input {
	mixin(H5This!("", null, `["type":"search"]`));
}
mixin(H5Calls!("BS5InputSearch"));
///
unittest {
	assert(BS5InputSearch, `<input class="form-control" type="search">`));	
}