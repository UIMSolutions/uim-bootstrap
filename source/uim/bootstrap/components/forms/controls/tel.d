module uim.bootstrap.components.forms.controls.tel;

import uim.bootstrap; 

class DBS4InputTelephone : DBS4Input {
	mixin(BS4This!("InputTelephone", `["form-control"]`, `["type":"tel"]`));	
}
mixin(BS4Func!("InputTelephone"));

unittest {
	writeln("Testing ", __MODULE__);
	
}