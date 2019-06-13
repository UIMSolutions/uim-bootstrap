module uim.bs4.components.forms.controls.week;

import uim.bs4; 

class DBS4InputWeek : DBS4Input {
	mixin(BS4This!("InputWeek", `["form-control"]`, `["type":"week"]`));	
}
mixin(BS4Func!("InputWeek"));

unittest {
	writeln("Testing ", __MODULE__);
	
}