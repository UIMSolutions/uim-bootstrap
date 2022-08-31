module uim.bootstrap.bs5.basic.components.buttons.close;

@safe: 
import uim.bootstrap;

class DBS5ButtonClose : DBS5Button {
	mixin(H5This!("button", ["close"], `["aria-label":"Close"]`));
	
	override string renderHTML(STRINGAA bindings = null) {
		this.content(H5Span(["aria-hidden":"true"], "&times;"));
		return super.renderHTML;
	}
}
mixin(H5Calls!"BS5ButtonClose");

version(test_uim_bootstrap) { unittest {
	assert(BS5ButtonClose == `<button class="btn close" aria-label="Close" type="button"><span aria-hidden="true">&times;</span></button>`);
}}
