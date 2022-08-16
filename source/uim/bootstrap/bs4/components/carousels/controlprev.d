module uim.bootstrap.bs4.components.carousels.controlprev;

@safe: 
import uim.bootstrap;

class DBS4CarouselControlPrev : DBS4Obj {
	mixin(H5This!("a", ["carousel-control-prev"], `["data-slide":"prev"]`));
	override public void initialize() {
		super.initialize;
		this.addContent(H5Span(["carousel-control-prev-icon"]));
		this.addContent(H5Span(["sr-only"], "Previous"));
	}
}

mixin(H5Calls!"BS4CarouselControlPrev");
version(test_uim_bootstrap) { unittest {
	assert(BS4CarouselControlPrev, 
	`<a class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>`);
}}