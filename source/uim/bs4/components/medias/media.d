module uim.bs4.components.medias.media;

import uim.bs4;

class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", `["media"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4Media");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4Media == `<div class="media"></div>`);
}
