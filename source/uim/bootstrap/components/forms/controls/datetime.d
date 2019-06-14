module uim.bootstrap.components.forms.controls.datetime;

import uim.bootstrap; 

class DBS4InputDateTime : DBS4Input {
	mixin(BS4This!("InputDateTime", `["form-control"]`, `["type":"datetime-local"]`));	
}
mixin(BS4Func!("InputDateTime"));

unittest {
	writeln("Testing ", __MODULE__);
	
}