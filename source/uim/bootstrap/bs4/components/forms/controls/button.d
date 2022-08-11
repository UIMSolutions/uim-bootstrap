module uim.bootstrap.bs4.components.forms.controls.button;

@safe: 
import uim.bootstrap; 

class DBS4InputButton : DBS4Input {
	mixin(H5This!(null, null, `["type":"button"]`));
}
mixin(H5Calls!("BS4InputButton"));
unittest {
	assert(BS4InputButton == `<input class="form-control" type="button">`);
}