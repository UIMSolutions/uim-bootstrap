module uim.bs4.components.forms.controls.email;

import uim.bs4; 

class DBS4InputEmail : DBS4Input {
	mixin(BS4This!("InputEmail", `["form-control"]`, `["type":"email"]`));	
}
mixin(BS4Func!("InputEmail"));

unittest {
	writeln("Testing ", __MODULE__);
	
}