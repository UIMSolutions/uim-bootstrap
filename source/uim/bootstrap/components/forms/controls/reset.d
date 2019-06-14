module uim.bootstrap.components.forms.controls.reset;

import uim.bootstrap; 

class DBS4InputReset : DBS4Input {
	mixin(BS4This!("InputReset", `["form-control"]`, `["type":"reset"]`));	
}
mixin(BS4Func!("InputReset"));

unittest {
	writeln("Testing ", __MODULE__);
	
}