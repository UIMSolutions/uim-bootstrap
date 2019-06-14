module uim.bootstrap.components.forms.controls.text;

import uim.bootstrap; 

class DBS4InputText : DBS4Input {
	mixin(BS4This!("InputText", `["form-control"]`, `["type":"text"]`));	
}
mixin(BS4Func!("InputText"));

unittest {
	writeln("Testing ", __MODULE__);
	
}