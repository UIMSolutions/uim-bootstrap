module uim.bs4.components.forms.controls.search;

import uim.bs4; 

class DBS4InputSearch : DBS4Input {
	mixin(BS4This!("InputSearch", `["form-control"]`, `["type":"search"]`));	
}
mixin(BS4Func!("InputSearch"));

unittest {
	writeln("Testing ", __MODULE__);
	
}