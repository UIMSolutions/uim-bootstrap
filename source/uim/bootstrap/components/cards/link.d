module uim.bootstrap.components.cards.link;

import uim.bootstrap;

class DBS4CardLink : DBS4Obj {
	mixin(H5This!("A", `["card-link"]`, `["href":"#"]`));
	override public void init() {
		super.init;
		_tag = "a";
	}
}
mixin(H5Short!"BS4CardLink");

unittest {
	
	
	assert(BS4CardLink == `<a class="card-link" href="#"></a>`);
	assert(BS4CardLink.content("SomeThing") == `<a class="card-link" href="#">SomeThing</a>`);
}
