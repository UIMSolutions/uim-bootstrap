module uim.bootstrap.bs5.basic.components.forms.controls.radio;

@safe: 
import uim.bootstrap; 

class DBS5Radio : DBS5Input {
	mixin(H5This!("", null, `["type":"radio"]`));
}
mixin(H5Calls!("BS5Radio"));
unittest {
	assert(BS5Radio, `<input class="form-control" type="radio">`));
}