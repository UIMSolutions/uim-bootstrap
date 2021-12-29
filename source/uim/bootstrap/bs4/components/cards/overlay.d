module uim.bootstrap.bs4.components.cards.overlay;

@safe: 
import uim.bootstrap;

/// Turns an image into a card background and adds text on top of the image
class DBS4CardOverlay : DBS4Obj {
	mixin(H5This!("Div", ["card-img-overlay"]));
}
/// Shortcuts
mixin(H5Calls!"BS4CardOverlay");
unittest {
	assert(Assert(BS4CardOverlay,`<div class="card-img-overlay"></div>`));
}
