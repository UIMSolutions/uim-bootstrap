module uim.bootstrap.components.carousels.carousel;

import uim.bootstrap;

class DBS4Carousel : DBS4Obj
{
	mixin(H5This!("div", `["carousel"]`, `["data-ride":"carousel"]`));
	override public void _init()
	{
		super._init;
	}
}

mixin(BS4Short!"Carousel");

unittest
{
}
