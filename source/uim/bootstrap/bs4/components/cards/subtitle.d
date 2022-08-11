module uim.bootstrap.bs4.components.cards.subtitle;

@safe: 
import uim.bootstrap;

class DBS4CardSubtitle : DBS4Obj {
	mixin(H5This!("H6", ["card-subtitle"]));
	override public void initialize() {
		super.initialize;
		_tag = "h6";
	}
}
mixin(H5Calls!"BS4CardSubtitle");
///
unittest {
	assert(BS4CardSubtitle, `<h6 class="card-subtitle"></h6>`));
	assert(BS4CardSubtitle.content("SomeThing"), `<h6 class="card-subtitle">SomeThing</h6>`));
}
