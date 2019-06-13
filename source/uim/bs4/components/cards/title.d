module uim.bs4.components.cards.title;

import uim.bs4;

class DBS4CardTitle : DH5H4 {
	mixin(BS4This!("H4", `["card-title"]`));
}
mixin(BS4Func!"CardTitle");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardTitle == `<h4 class="card-title"></h4>`);
	assert(BS4CardTitle.content("SomeThing") == `<h4 class="card-title">SomeThing</h4>`);
}
