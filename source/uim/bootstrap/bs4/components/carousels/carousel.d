module uim.bootstrap.bs4.components.carousels.carousel;

@safe: 
import uim.bootstrap;

class DBS4Carousel : DBS4Obj
{
	mixin(H5This!("div", ["carousel"], `["data-ride":"carousel"]`));
	mixin(MyContent!("indicators", "DBS4CarouselIndicators"));
	mixin(MyContent!("inner	", "DBS4CarouselInner"));
}

mixin(H5Calls!"BS4Carousel");
///
unittest
{
}
