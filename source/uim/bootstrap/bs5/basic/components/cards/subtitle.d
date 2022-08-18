module uim.bootstrap.bs5.basic.components.cards.subtitle;

@safe: 
import uim.bootstrap;

class DBS5CardSubtitle : DBS5Obj {
	mixin(H5This!("H6", ["card-subtitle"]));
	override public void initialize() {
		super.initialize;
		_tag = "h6";
	}
}
mixin(H5Calls!"BS5CardSubtitle");

version(test_uim_bootstrap) { unittest {
	assert(BS5CardSubtitle == `<h6 class="card-subtitle"></h6>`);
	assert(BS5CardSubtitle.content("SomeThing"), `<h6 class="card-subtitle">SomeThing</h6>`);
}}
