module uim.bootstrap.components.forms.controls.week;

import uim.bootstrap; 

class DBS4InputWeek : DBS4Input {
	mixin(BS4This!("InputWeek", `["form-control"]`, `["type":"week"]`));	
}
mixin(BS4Func!("InputWeek"));

unittest {
	writeln("Testing ", __MODULE__);
	
}