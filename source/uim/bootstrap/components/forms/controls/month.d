module uim.bootstrap.components.forms.controls.month;

import uim.bootstrap; 

class DBS4InputMonth : DBS4Input {
	mixin(BS4This!("InputMonth", `["form-control"]`, `["type":"month"]`));	
}
mixin(BS4Func!("InputMonth"));

unittest {
	
	
}