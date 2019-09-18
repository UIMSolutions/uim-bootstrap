module uim.bootstrap.components.carousels.controlprev;

import uim.bootstrap;

class DBS4CarouselControlPrev : DBS4Obj
{
	mixin(H5This!("a", `["carousel-control-prev"]`, `["data-slide":"prev"]`));
	override public void _init()
	{
		super._init;
		_html ~= H5Span(["carousel-control-prev-icon"]);
	}
}

mixin(BS4Short!"CarouselControlPrev");
///
unittest
{
	assert(BS4CarouselControlPrev == `<a class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span></a>`);
}