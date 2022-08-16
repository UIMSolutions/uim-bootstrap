module uim.bootstrap.bs4.content.images.image;

@safe: 
import uim.bootstrap;

class DBS4Image : DBS4Obj {
	mixin(H5This!("Img"));
	override public void initialize() { super.initialize; _single = true; }

	/// alt attribute 
	O text(this O)(string txt) { this.attributes("alt", txt); return cast(O)this; }
	O alt(this O)(string txt) { this.attributes("alt", txt); return cast(O)this; }

	O rounded(this O)() { this.addClasses("rounded"); return cast(O)this; }
	O rounded(this O)(string side) { this.addClasses("rounded-"~side); return cast(O)this; }
	O roundedNo(this O)() { this.addClasses("rounded-0"); return cast(O)this; }
}
mixin(H5Calls!("BS4Image"));

version(test_uim_bootstrap) { unittest {
	assert(BS4Image, `<img>`);
}}