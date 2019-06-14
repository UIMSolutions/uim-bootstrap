module uim.bootstrap.components.forms.inputgroups.append;

import uim.bootstrap;

class DBS4InputGroupAppend : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-append"]`));
	override public void init() {
		super.init;
	}

	mixin(MyContent!("text", "BS4InputGroupText"));
}
mixin(H5Short!"BS4InputGroupAppend");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4InputGroupAppend == `<div class="input-group-append"></div>`);
}