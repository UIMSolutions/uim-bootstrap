module uim.bs4.components.forms.controls.date;

import uim.bs4; 

class DBS4InputDate : DBS4Input {
	mixin(BS4This!("InputDate", `["form-control"]`, `["type":"date"]`));	
}
mixin(BS4Func!("InputDate"));

unittest {
	writeln("Testing ", __MODULE__);
	
}