module uim.bootstrap.bs4.components.forms.controls.search;

@safe: 
import uim.bootstrap; 

class DBS4InputSearch : DBS4Input {
	mixin(H5This!("", null, `["type":"search"]`));
}
mixin(H5Calls!("BS4InputSearch"));
///
unittest {
	assert(BS4InputSearch, `<input class="form-control" type="search">`);	
}