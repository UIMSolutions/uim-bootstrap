module uim.bs4.components.dropdowns.togglelink;

import uim.bs4;

class DBS4Togglelink : DBS4ButtonLink {
	mixin(H5This!("A", `["btn", "dropdown-toggle"]`, `["aria-haspopup":"true", "aria-expanded":"false"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4Togglelink");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Togglelink == `<div class="dropdown"></div>`);
	assert(BS4Togglelink.id("id") == `<div id="id" class="dropdown"></div>`);
}

