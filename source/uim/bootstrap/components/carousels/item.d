module uim.bootstrap.components.carousels.item;

import uim.bootstrap;

class DBS4CarouselItem : DBS4Obj
{
	mixin(H5This!("div", `["carousel-item"]`));
	override public void _init()
	{
		super._init;
	}
}

mixin(BS4Short!"CarouselItem");

unittest
{
}
