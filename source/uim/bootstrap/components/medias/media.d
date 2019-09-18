module uim.bootstrap.components.medias.media;

import uim.bootstrap;

class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", `["media"]`));
	override public void _init() {
		super._init;
	}	
}
mixin(BS4Short!"Media");

unittest {
	
	
	assert(BS4Media == `<div class="media"></div>`);
}
