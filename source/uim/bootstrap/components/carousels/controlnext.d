module uim.bootstrap.components.carousels.controlnext;

import uim.bootstrap;

class DBS4CarouselControlNext : DBS4Obj
{
	mixin(H5This!("a", `["carousel-control-next"]`, `["data-slide":"next"]`));
	override public void _init()
	{
		super._init;
		_html ~= H5Span(["carousel-control-next-icon"]);
	}
}

mixin(BS4Short!"CarouselControlNext");
///
unittest
{
	assert(BS4CarouselControlNext == `<a class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span></a>`);
}
