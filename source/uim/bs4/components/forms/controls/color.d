module uim.bs4.components.forms.controls.color;

import uim.bs4; 

class DBS4InputColor : DBS4Input {
	mixin(BS4This!("InputColor", `["form-control"]`, `["type":"color"]`));	
}
mixin(BS4Func!("InputColor"));

unittest {
	writeln("Testing ", __MODULE__);
	
}