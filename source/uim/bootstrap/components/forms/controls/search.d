module uim.bootstrap.components.forms.controls.search;

import uim.bootstrap; 

class DBS4InputSearch : DBS4Input {
	mixin(BS4This!("InputSearch", `["form-control"]`, `["type":"search"]`));	
}
mixin(BS4Func!("InputSearch"));

unittest {
	writeln("Testing ", __MODULE__);
	
}