module uim.bootstrap.components.forms.inputgroups.prepend;

import uim.bootstrap;

class DBS4InputGroupPrepend : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-prepend"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("text", "BS4InputGroupText"));
}
mixin(H5Short!"BS4InputGroupPrepend");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4InputGroupPrepend == `<div class="input-group-prepend"></div>`);
}