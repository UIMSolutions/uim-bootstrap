module uim.bootstrap.components.forms.controls.radio;

import uim.bootstrap; 

class DBS4InputRadio : DBS4Input {
	mixin(BS4This!("InputRadio", `["form-control"]`, `["type":"radio"]`));	
}
mixin(BS4Func!("InputRadio"));

unittest {
	writeln("Testing ", __MODULE__);
	
}