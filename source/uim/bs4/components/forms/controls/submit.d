module uim.bs4.components.forms.controls.submit;

import uim.bs4; 

class DBS4InputSubmit : DBS4Input {
	mixin(BS4This!("InputSubmit", `["form-control"]`, `["type":"submit"]`));	
}
mixin(BS4Func!("InputSubmit"));

unittest {
	writeln("Testing ", __MODULE__);
	
}