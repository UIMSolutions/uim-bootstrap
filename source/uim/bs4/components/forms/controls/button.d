module uim.bs4.components.forms.controls.button;

import uim.bs4; 

class DBS4InputButton : DBS4Input {
	mixin(BS4This!("InputButton", `["form-control"]`, `["type":"button"]`));	
}
mixin(BS4Func!("InputButton"));

unittest {
	writeln("Testing ", __MODULE__);
	
}