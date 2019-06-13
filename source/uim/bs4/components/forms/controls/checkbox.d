module uim.bs4.components.forms.controls.checkbox;

import uim.bs4; 

class DBS4InputCheckbox : DBS4Input {
	mixin(BS4This!("InputCheckbox", `["form-control"]`, `["type":"checkbox"]`));	
}
mixin(BS4Func!("InputCheckbox"));

unittest {
	writeln("Testing ", __MODULE__);
	
}