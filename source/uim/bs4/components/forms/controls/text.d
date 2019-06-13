module uim.bs4.components.forms.controls.text;

import uim.bs4; 

class DBS4InputText : DBS4Input {
	mixin(BS4This!("InputText", `["form-control"]`, `["type":"text"]`));	
}
mixin(BS4Func!("InputText"));

unittest {
	writeln("Testing ", __MODULE__);
	
}