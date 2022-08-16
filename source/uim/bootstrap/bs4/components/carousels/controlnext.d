module uim.bootstrap.bs4.components.carousels.controlnext;

@safe: 
import uim.bootstrap;

class DBS4CarouselControlNext : DBS4Obj {
	mixin(H5This!("a", ["carousel-control-next"], `["data-slide":"next"]`));
	override public void initialize() {
		super.initialize;
		
		this
			.addContent(H5Span(["carousel-control-next-icon"]))
			.addContent(H5Span(["sr-only"], "Next"));
	}
}
mixin(H5Calls!"BS4CarouselControlNext");

version(test_uim_bootstrap) { unittest {
	writeln(BS4CarouselControlNext);
	assert(BS4CarouselControlNext ==
		`<a class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>`);
}}
