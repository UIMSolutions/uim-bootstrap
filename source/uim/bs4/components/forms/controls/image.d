module uim.bs4.components.forms.controls.image;

import uim.bs4; 

class DBS4InputImage : DBS4Input {
	mixin(BS4This!("InputImage", `["form-control"]`, `["type":"image"]`));	
}
mixin(BS4Func!("InputImage"));

unittest {
	writeln("Testing ", __MODULE__);
	
}