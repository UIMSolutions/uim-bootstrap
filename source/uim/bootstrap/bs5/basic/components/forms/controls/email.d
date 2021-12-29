module uim.bootstrap.bs5.basic.components.forms.controls.email;

@safe: 
import uim.bootstrap; 

class DBS5InputEmail : DBS5Input {
	mixin(H5This!(null, null, `["type":"email"]`));
}
mixin(H5Calls!("BS5InputEmail"));
///
unittest {
	assert(Assert(BS5InputEmail, `<input class="form-control" type="email">`));
}