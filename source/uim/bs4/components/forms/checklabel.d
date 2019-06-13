module uim.bs4.components.forms.checklabel;

import uim.bs4;

class DBS4FormCheckLabel : DBS4Obj {
	mixin(H5This!("LABEL", `["form-check-label"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4FormCheckLabel");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4FormCheck == `<label class="form-check-label"></label>`);
}