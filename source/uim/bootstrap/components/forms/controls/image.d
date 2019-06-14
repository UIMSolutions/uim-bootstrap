module uim.bootstrap.components.forms.controls.image;

import uim.bootstrap; 

class DBS4InputImage : DBS4Input {
	mixin(BS4This!("InputImage", `["form-control"]`, `["type":"image"]`));	
}
mixin(BS4Func!("InputImage"));

unittest {
	writeln("Testing ", __MODULE__);
	
}