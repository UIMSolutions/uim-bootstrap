module uim.bootstrap.extras.cards;

import uim.bootstrap;

class DBS4CardTools : DBS4Obj {
	mixin(H5This!("Div", ["card-tools"], null));

  mixin(MyContent!("button", "BS4Button"));
  mixin(MyContent!("link", "BS4ButtonLink"));

	O collapse(this O)(){ return this.content(BS4Button(["btn-tool"], ["data-card-widget":"collapse"], FA("minus"))); }
	O remove(this O)(){ return this.content(BS4Button(["btn-tool"], ["data-card-widget":"remove"], FA("remove"))); }
}
mixin(H5Calls!"BS4CardTools");
unittest {
	assert(Assert(BS4CardTools,`<div class="card-tools"></div>`));
	assert(Assert(BS4CardTools.button,`<div class="card-tools"><button class="btn" type="button"></button></div>`));
	assert(Assert(BS4CardTools.link,`<div class="card-tools"></div>`));
}

class DBS4CardComment : DBS4Obj {
	mixin(H5This!("Div", ["card-comment"], null));

  mixin(MyContent!("image", "H5Img"));
  mixin(MyContent!("text", "BS4CommentText"));
}
mixin(H5Calls!"BS4CardComment");

unittest {
	assert(Assert(BS4CardComment,`<div class="card-comment"></div>`));
}
