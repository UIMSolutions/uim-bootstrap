module uim.bootstrap.components.buttons.close;

import uim.bootstrap;

class DBS4ButtonClose : DBS4Button {
	mixin(H5This!("button"));

	override string toHTML() {
		this.clearHtml()(BS4Button(["close"], ["aria-label":"Close"], H5Span(["aria-hidden":"true"], "&times;")));
		return super.toHTML;
	}
}
mixin(BS4Short!"ButtonClose");

unittest {
	assert(Assert(BS4ButtonClose, `<button class="btn" type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>`));
}
