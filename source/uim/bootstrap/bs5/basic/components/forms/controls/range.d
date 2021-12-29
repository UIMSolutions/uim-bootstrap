module uim.bootstrap.bs5.basic.components.forms.controls.range;

@safe: 
import uim.bootstrap; 

class DBS5InputRange : DBS5Input {
	mixin(H5This!(null, null, `["type":"range"]`));
}
mixin(H5Calls!("BS5InputRange"));
unittest {
	assert(Assert(BS5InputRange,`<input class="form-control" type="range">`));	
}