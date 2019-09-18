module uim.bootstrap.components.forms.controls.url;

import uim.bootstrap; 

class DBS4InputUrl : DBS4Input {
	mixin(BS4This!("InputUrl", `["form-control"]`, `["type":"url"]`));	
}
mixin(BS4Func!("InputUrl"));

unittest {
	
	
}