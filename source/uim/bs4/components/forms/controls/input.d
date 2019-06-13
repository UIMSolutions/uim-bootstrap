module uim.bs4.components.forms.controls.input;

import uim.bs4; 

class DBS4Input : DH5INPUT {
	mixin(BS4This!("Input", `["form-control"]`));	
}
mixin(BS4Func!("Input"));

unittest {
	writeln("Testing ", __MODULE__);
	
}