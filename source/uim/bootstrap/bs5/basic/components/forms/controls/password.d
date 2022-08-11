module uim.bootstrap.bs5.basic.components.forms.controls.password;

@safe: 
import uim.bootstrap; 

class DBS5InputPassword : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"password"]`));
}
mixin(H5Calls!("BS5InputPassword"));
///
unittest {
		assert(BS5InputPassword, `<input class="form-control" type="password">`);
}