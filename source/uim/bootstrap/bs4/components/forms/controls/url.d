module uim.bootstrap.bs4.components.forms.controls.url;

@safe: 
import uim.bootstrap; 

class DBS4InputUrl : DBS4Input {
	mixin(H5This!("", null, `["type":"url"]`));
}
mixin(H5Calls!("BS4InputUrl"));
///
unittest {
	assert(BS4InputUrl, `<input class="form-control" type="url">`));
}