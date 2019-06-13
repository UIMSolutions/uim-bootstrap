module uim.bs4.components.forms.controls.hidden;

import uim.bs4; 

class DBS4InputHidden : DBS4Input {
	mixin(BS4This!("InputHidden", `["form-control"]`, `["type":"hidden"]`));	
}
mixin(BS4Func!("InputHidden"));

unittest {
	writeln("Testing ", __MODULE__);
	
}