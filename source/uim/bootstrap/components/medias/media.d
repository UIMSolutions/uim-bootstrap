module uim.bootstrap.components.medias.media;

import uim.bootstrap;

class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", `["media"]`));
	override public void init() {
		super.init;
	}	
}
mixin(H5Short!"BS4Media");

unittest {
	
	
	assert(BS4Media == `<div class="media"></div>`);
}
