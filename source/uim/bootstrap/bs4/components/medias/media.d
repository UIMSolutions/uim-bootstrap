﻿module uim.bootstrap.bs4.components.medias.media;

import uim.bootstrap;

@safe: class DBS4Media : DBS4Obj {
	mixin(H5This!("DIV", ["media"]));

	mixin(MyContent!("body_", "BS4MediaBody"));
}
mixin(H5Calls!"BS4Media");

unittest {
	assert(Assert(BS4Media, `<div class="media"></div>`));
}
