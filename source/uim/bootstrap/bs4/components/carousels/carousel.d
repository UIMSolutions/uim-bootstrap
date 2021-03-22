module uim.bootstrap.bs4.components.carousels.carousel;

import uim.bootstrap;

@safe: class DBS4Carousel : DBS4Obj
{
	mixin(H5This!("div", ["carousel"], `["data-ride":"carousel"]`));
	override public void _init()
	{
		super._init;
	}
	mixin(MyContent!("indicators", "DBS4CarouselIndicators"));
	mixin(MyContent!("inner	", "DBS4CarouselInner"));
}

mixin(H5Calls!"BS4Carousel");
///
unittest
{
}
