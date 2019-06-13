module uim.bs4.components.forms.controls.time;

import uim.bs4; 

class DBS4InputTime : DBS4Input {
	mixin(BS4This!("InputTime", `["form-control"]`, `["type":"time"]`));	
}
mixin(BS4Func!("InputTime"));

unittest {
	writeln("Testing ", __MODULE__);
	
}