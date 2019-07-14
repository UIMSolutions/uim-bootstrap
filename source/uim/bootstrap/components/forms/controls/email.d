module uim.bootstrap.components.forms.controls.email;

import uim.bootstrap; 

class DBS4InputEmail : DBS4Input {
	mixin(BS4This!("InputEmail", `["form-control"]`, `["type":"email"]`));	
}
mixin(BS4Func!("InputEmail"));

unittest {
	
	
}