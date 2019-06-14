module uim.bootstrap.components.forms.controls.password;

import uim.bootstrap; 

class DBS4InputPassword : DBS4Input {
	mixin(BS4This!("InputPassword", `["form-control"]`, `["type":"password"]`));	
}
mixin(BS4Func!("InputPassword"));

unittest {
	writeln("Testing ", __MODULE__);
	
}