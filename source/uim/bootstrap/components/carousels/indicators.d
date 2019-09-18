module uim.bootstrap.components.carousels.indicators;

import uim.bootstrap;

class DBS4CarouselIndicators : DBS4Obj
{
	mixin(H5This!("ul", `["carousel-indicators"]`));
	override public void _init()
	{
		super._init;
	}
}

mixin(BS4Short!"CarouselIndicators");
///
unittest
{
}
