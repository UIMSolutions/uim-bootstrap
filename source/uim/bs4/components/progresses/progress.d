module uim.bs4.components.progresses.progress;

import uim.bs4;

class DBS4Progress : DBS4Obj {
	mixin(H5This!("DIV", `["progress"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4Progress");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Progress == `<div class="progress"></div>`);
}