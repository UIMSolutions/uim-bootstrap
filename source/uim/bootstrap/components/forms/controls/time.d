module uim.bootstrap.components.forms.controls.time;

import uim.bootstrap; 

class DBS4InputTime : DBS4Input {
	mixin(BS4This!("InputTime", `["form-control"]`, `["type":"time"]`));	
}
mixin(BS4Func!("InputTime"));

unittest {
	
	
}