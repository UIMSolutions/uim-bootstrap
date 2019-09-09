module uim.bootstrap.components.forms.inputgroups.append;

import uim.bootstrap;

class DBS4InputGroupAppend : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-append"]`));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("text", "BS4InputGroupText"));
}
mixin(BS4Short!"InputGroupAppend");

unittest {
	
	
	assert(BS4InputGroupAppend == `<div class="input-group-append"></div>`);
}