module uim.bootstrap.bs5.basic.components.carousels.carousel;

@safe: 
import uim.bootstrap;

class DBS5Carousel : DBS5Obj
{
	mixin(H5This!("div", ["carousel"], `["data-ride":"carousel"]`));
	override public void _init()
	{
		super._init;
	}
	mixin(MyContent!("indicators", "DBS5CarouselIndicators"));
	mixin(MyContent!("inner	", "DBS5CarouselInner"));
}

mixin(H5Calls!"BS5Carousel");
///
unittest
{
}
