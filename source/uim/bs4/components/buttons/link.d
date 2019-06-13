module uim.bs4.components.buttons.link;

import uim.bs4;

class DBS4ButtonLink : DBS4ButtonObj {
	mixin(H5This!("A", `["btn"]`, `["type":"button"]`));

	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4ButtonLink");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ButtonLink == `<a class="btn" type="button"></a>`);
}
