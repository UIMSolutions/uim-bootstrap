module uim.bootstrap.bs5.basic.components.forms.controls.url;

@safe: 
import uim.bootstrap; 

class DBS5InputUrl : DBS5Input {
	mixin(H5This!("", null, `["type":"url"]`));
}
mixin(H5Calls!("BS5InputUrl"));
///
unittest {
	assert(Assert(BS5InputUrl, `<input class="form-control" type="url">`));
}