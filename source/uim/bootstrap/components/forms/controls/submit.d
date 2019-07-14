module uim.bootstrap.components.forms.controls.submit;

import uim.bootstrap; 

class DBS4InputSubmit : DBS4Input {
	mixin(BS4This!("InputSubmit", `["form-control"]`, `["type":"submit"]`));	
}
mixin(BS4Func!("InputSubmit"));

unittest {
	
	
}