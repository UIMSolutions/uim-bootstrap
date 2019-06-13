module uim.bs4.components.forms.controls.datetime;

import uim.bs4; 

class DBS4InputDateTime : DBS4Input {
	mixin(BS4This!("InputDateTime", `["form-control"]`, `["type":"datetime-local"]`));	
}
mixin(BS4Func!("InputDateTime"));

unittest {
	writeln("Testing ", __MODULE__);
	
}