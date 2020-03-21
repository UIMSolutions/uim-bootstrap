module uim.bootstrap.content.images.image;

import uim.bootstrap;

class DBS4Image : DBS4Obj {
	mixin(H5This!("Img"));
	override public void _init() { super._init; _single = true; }

	/// alt attribute 
	O text(this O)(string txt) { this.attributes("alt", txt); return cast(O)this; }
	O alt(this O)(string txt) { this.attributes("alt", txt); return cast(O)this; }

	O rounded(this O)() { this.classes("rounded"); return cast(O)this; }
	O rounded(this O)(string side) { this.classes("rounded-"~side); return cast(O)this; }
	O roundedNo(this O)() { this.classes("rounded-0"); return cast(O)this; }
}
mixin(BS4Func!("Image"));

unittest {
	assert(Assert(BS4Image, `<img>`));
}