module uim.bootstrap.components.cards.title;

import uim.bootstrap;

class DBS4CardTitle : DH5H4 {
	mixin(BS4This!("H4", `["card-title"]`));
}
mixin(BS4Func!"CardTitle");

unittest {
	
	
	assert(BS4CardTitle == `<h4 class="card-title"></h4>`);
	assert(BS4CardTitle.content("SomeThing") == `<h4 class="card-title">SomeThing</h4>`);
}
