module uim.bootstrap.components.cards.blockquote;

import uim.bootstrap;

class DBS4CardBlockquote : DBS4Obj {
	mixin(H5This!("BLOCKQUOTE", `["card-blockquote"]`));
}
mixin(BS4Short!"CardBlockquote");
///
unittest {
	assert(Assert(BS4CardBlockquote,`<blockquote class="card-blockquote"></blockquote>`));
}

