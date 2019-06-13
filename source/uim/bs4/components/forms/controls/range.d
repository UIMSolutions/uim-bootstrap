module uim.bs4.components.forms.controls.range;

import uim.bs4; 

class DBS4InputRange : DH5INPUT {
	mixin(BS4This!("InputRange", `["form-control-range"]`, `["type":"range"]`));	
}
mixin(BS4Func!("InputRange"));

unittest {
	writeln("Testing ", __MODULE__);
	
}