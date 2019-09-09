module uim.bootstrap.components.forms.inputgroups.text;

import uim.bootstrap;

class DBS4InputGroupText : DBS4Obj {
	mixin(H5This!("DIV", `["input-group-text"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"InputGroupText");

unittest {
	
	
	assert(BS4InputGroupText == `<div class="input-group-text"></div>`);
}