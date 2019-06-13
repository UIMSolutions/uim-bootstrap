module uim.bs4.components.forms.controls.reset;

import uim.bs4; 

class DBS4InputReset : DBS4Input {
	mixin(BS4This!("InputReset", `["form-control"]`, `["type":"reset"]`));	
}
mixin(BS4Func!("InputReset"));

unittest {
	writeln("Testing ", __MODULE__);
	
}