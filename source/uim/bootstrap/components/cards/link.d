module uim.bootstrap.components.cards.link;

import uim.bootstrap;

class DBS4CardLink : DBS4Obj {
	mixin(H5This!("A", `["card-link"]`, `["href":"#"]`));
	override public void _init() {
		super._init;
		_tag = "a";
	}
}
mixin(BS4Short!"CardLink");

unittest {
	
	
	assert(BS4CardLink == `<a class="card-link" href="#"></a>`);
	assert(BS4CardLink.content("SomeThing") == `<a class="card-link" href="#">SomeThing</a>`);
}
