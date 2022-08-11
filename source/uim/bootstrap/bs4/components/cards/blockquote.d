module uim.bootstrap.bs4.components.cards.blockquote;

@safe: 
import uim.bootstrap;

class DBS4CardBlockquote : DBS4Obj {
	mixin(H5This!("BLOCKQUOTE", ["card-blockquote"]));
}
mixin(H5Calls!"BS4CardBlockquote");
///
unittest {
	assert(BS4CardBlockquote,`<blockquote class="card-blockquote"></blockquote>`));
}

