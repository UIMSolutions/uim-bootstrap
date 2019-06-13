module uim.bs4.components.forms.controls.month;

import uim.bs4; 

class DBS4InputMonth : DBS4Input {
	mixin(BS4This!("InputMonth", `["form-control"]`, `["type":"month"]`));	
}
mixin(BS4Func!("InputMonth"));

unittest {
	writeln("Testing ", __MODULE__);
	
}