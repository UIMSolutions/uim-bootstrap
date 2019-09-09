module uim.bootstrap.components.cards.block;

import uim.bootstrap;

class DBS4CardBlock : DBS4Obj
{
	mixin(H5This!("DIV", `["card-block"]`));
	override public void _init()
	{
		super._init;
	}
}

mixin(BS4Short!"CardBlock");
unittest
{
	assert(BS4CardBlock == `<div class="card-block"></div>`);
}
