module uim.bs4.components.forms.text;

import uim.bs4;

class DBS4FormText : DBS4Obj {
	mixin(H5This!("SMALL", `["form-text"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4FormText");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4FormCheck == `<small class="form-text"></small>`);
}