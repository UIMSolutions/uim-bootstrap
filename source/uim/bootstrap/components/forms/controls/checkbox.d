module uim.bootstrap.components.forms.controls.checkbox;

import uim.bootstrap; 

class DBS4InputCheckbox : DBS4Input {
	mixin(BS4This!("InputCheckbox", `["form-control"]`, `["type":"checkbox"]`));	
}
mixin(BS4Func!("InputCheckbox"));

unittest {
	
	
}