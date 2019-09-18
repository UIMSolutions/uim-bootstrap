module uim.bootstrap.components.forms.inputgroups.prepend;

import uim.bootstrap;

class DBS4InputGroupPrepend : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-prepend"]`));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("text", "BS4InputGroupText"));
}
mixin(BS4Short!"InputGroupPrepend");

unittest {
	
	
	assert(BS4InputGroupPrepend == `<div class="input-group-prepend"></div>`);
}