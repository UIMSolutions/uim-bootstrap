module uim.bs4.components.forms.controls.url;

import uim.bs4; 

class DBS4InputUrl : DBS4Input {
	mixin(BS4This!("InputUrl", `["form-control"]`, `["type":"url"]`));	
}
mixin(BS4Func!("InputUrl"));

unittest {
	writeln("Testing ", __MODULE__);
	
}