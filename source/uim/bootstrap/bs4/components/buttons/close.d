module uim.bootstrap.bs4.components.buttons.close;

@safe: 
import uim.bootstrap;

class DBS4ButtonClose : DBS4Button {
	mixin(H5This!("button", ["close"], `["aria-label":"Close"]`));
	
	override string renderHTML(STRINGAA bindings = null) {
		this.addContent(H5Span(["aria-hidden":"true"], "&times;"));
		return super.renderHTML;
	}
}
mixin(H5Calls!"BS4ButtonClose");

version(test_uim_bootstrap) { unittest {
	assert(BS4ButtonClose == `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
}}
