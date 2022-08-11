module uim.bootstrap.bs4.components.carousels.controlnext;

@safe: 
import uim.bootstrap;

class DBS4CarouselControlNext : DBS4Obj {
	mixin(H5This!("a", ["carousel-control-next"], `["data-slide":"next"]`));
	override public void initialize() {
		super.initialize;
		this.content(H5Span(["carousel-control-next-icon"]));
		this.content(H5Span(["sr-only"], "Next"));
	}
}

mixin(H5Calls!"BS4CarouselControlNext");
unittest {
	assert(BS4CarouselControlNext,
		`<a class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);
}
