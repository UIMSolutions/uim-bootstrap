module uim.bootstrap.components.forms.controls.date;

import uim.bootstrap; 

class DBS4InputDate : DBS4Input {
	mixin(BS4This!("InputDate", `["form-control"]`, `["type":"date"]`));	
}
mixin(BS4Func!("InputDate"));

unittest {
	writeln("Testing ", __MODULE__);
	
}