module uim.bootstrap.components.forms.controls.color;

import uim.bootstrap; 

class DBS4InputColor : DBS4Input {
	mixin(BS4This!("InputColor", `["form-control"]`, `["type":"color"]`));	
}
mixin(BS4Func!("InputColor"));

unittest {
	
	
}