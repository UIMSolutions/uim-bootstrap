module uim.bootstrap.components.medias.media;

import uim.bootstrap;

class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", `["media"]`));
}
mixin(BS4Short!"Media");

unittest {
	assert(Assert(BS4Media, `<div class="media"></div>`));
}
