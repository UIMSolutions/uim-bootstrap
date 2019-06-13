module uim.bs4.components.forms.controls.password;

import uim.bs4; 

class DBS4InputPassword : DBS4Input {
	mixin(BS4This!("InputPassword", `["form-control"]`, `["type":"password"]`));	
}
mixin(BS4Func!("InputPassword"));

unittest {
	writeln("Testing ", __MODULE__);
	
}