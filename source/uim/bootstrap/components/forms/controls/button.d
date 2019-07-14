module uim.bootstrap.components.forms.controls.button;

import uim.bootstrap; 

class DBS4InputButton : DBS4Input {
	mixin(BS4This!("InputButton", `["form-control"]`, `["type":"button"]`));	
}
mixin(BS4Func!("InputButton"));

unittest {
	
	
}