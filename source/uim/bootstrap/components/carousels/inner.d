module uim.bootstrap.components.carousels.inner;

import uim.bootstrap;

class DBS4CarouselInner : DBS4Obj
{
	mixin(H5This!("div", ["carousel-inner"]));
	override public void _init()
	{
		super._init;
	}
}

mixin(H5Calls!"BS4CarouselInner");

unittest
{
}
