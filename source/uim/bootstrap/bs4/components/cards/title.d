module uim.bootstrap.bs4.components.cards.title;

import uim.bootstrap;

@safe: class DBS4CardTitle : DBS4Obj {
	mixin(H5This!("H4", ["card-title"]));

	O level(this O)(uint value) { if (value > 0) _tag = "h"~to!string(value); return cast(O)this; }
	O level(this O)(string value) { if (value.length > 0) _tag = "h"~value; return cast(O)this; }
	unittest {
		assert(Assert(BS4CardTitle.level(2), `<h2 class="card-title"></h2>`));
	}
}
mixin(H5Calls!"BS4CardTitle");

unittest {
	assert(Assert(BS4CardTitle, `<h4 class="card-title"></h4>`));
	assert(Assert(BS4CardTitle.content("SomeThing"), `<h4 class="card-title">SomeThing</h4>`));
}
