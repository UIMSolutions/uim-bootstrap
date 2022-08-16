module uim.bootstrap.bs4.components.cards.title;

@safe: 
import uim.bootstrap;

class DBS4CardTitle : DBS4Obj {
	mixin(H5This!("H4", ["card-title"]));

	O level(this O)(uint value) { if (value > 0) _tag = "h"~to!string(value); return cast(O)this; }
	O level(this O)(string value) { if (value.length > 0) _tag = "h"~value; return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4CardTitle.level(2), `<h2 class="card-title"></h2>`);
	}}
}
mixin(H5Calls!"BS4CardTitle");

version(test_uim_bootstrap) { unittest {
	assert(BS4CardTitle, `<h4 class="card-title"></h4>`);
	assert(BS4CardTitle.content("SomeThing"), `<h4 class="card-title">SomeThing</h4>`);
}}
