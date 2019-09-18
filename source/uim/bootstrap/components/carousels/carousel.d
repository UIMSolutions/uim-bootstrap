module uim.bootstrap.components.carousels.carousel;

import uim.bootstrap;

class DBS4Carousel : DBS4Obj
{
	mixin(H5This!("div", `["carousel"]`, `["data-ride":"carousel"]`));
	override public void _init()
	{
		super._init;
	}
	mixin(MyContent!("indicators", "DBS4CarouselIndicators"));
	mixin(MyContent!("inner	", "DBS4CarouselInner"));
}

mixin(BS4Short!"Carousel");
///
unittest
{
}
