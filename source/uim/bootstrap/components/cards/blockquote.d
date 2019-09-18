module uim.bootstrap.components.cards.blockquote;

import uim.bootstrap;

class DBS4CardBlockquote : DBS4Obj {
	mixin(H5This!("BLOCKQUOTE", `["card-blockquote"]`));
	override public void _init() { super._init; }
	unittest {
		assert(BS4CardBlockquote == `<blockquote class="card-blockquote"></blockquote>`);
	}
}
mixin(BS4Short!"CardBlockquote");

