module uim.bootstrap.components.forms.controls.number;

import uim.bootstrap; 

class DBS4InputNumber : DBS4Input {
	mixin(BS4This!("InputNumber", `["form-control"]`, `["type":"number"]`));	
}
mixin(BS4Func!("InputNumber"));

unittest {
	writeln("Testing ", __MODULE__);
	
}