module uim.bootstrap.components.forms.controls.range;

import uim.bootstrap; 

class DBS4InputRange : DH5Input {
	mixin(BS4This!("InputRange", `["form-control-range"]`, `["type":"range"]`));	
}
mixin(BS4Func!("InputRange"));

unittest {
	
	
}