module uim.bootstrap.components.forms.controls.hidden;

import uim.bootstrap; 

class DBS4InputHidden : DBS4Input {
	mixin(BS4This!("InputHidden", `["form-control"]`, `["type":"hidden"]`));	
}
mixin(BS4Func!("InputHidden"));

unittest {
	writeln("Testing ", __MODULE__);
	
}