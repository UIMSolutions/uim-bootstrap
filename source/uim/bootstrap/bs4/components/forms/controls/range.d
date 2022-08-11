module uim.bootstrap.bs4.components.forms.controls.range;

@safe: 
import uim.bootstrap; 

class DBS4InputRange : DBS4Input {
	mixin(H5This!(null, null, `["type":"range"]`));
}
mixin(H5Calls!("BS4InputRange"));
unittest {
	assert(BS4InputRange,`<input class="form-control" type="range">`));	
}