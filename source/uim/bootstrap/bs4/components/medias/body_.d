module uim.bootstrap.bs4.components.medias.body_;

import uim.bootstrap;

@safe: class DBS4MediaBody : DBS4Obj {
	mixin(H5This!("DIV", ["media-body"]));
}
mixin(H5Calls!"BS4MediaBody");

unittest {
	assert(Assert(BS4MediaBody, `<div class="media-body"></div>`));
}
