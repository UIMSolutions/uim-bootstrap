module uim.bs4.components.forms.controls.number;

import uim.bs4; 

class DBS4InputNumber : DBS4Input {
	mixin(BS4This!("InputNumber", `["form-control"]`, `["type":"number"]`));	
}
mixin(BS4Func!("InputNumber"));

unittest {
	writeln("Testing ", __MODULE__);
	
}