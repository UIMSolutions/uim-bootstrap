module uim.bootstrap.extras.descriptions;

import uim.bootstrap;

class DBS4DescriptionBlock : DBS4Obj {
	mixin(H5This!("Div", ["description-block"], null));

  mixin(MyContent!("header", "BS4DescriptionHeader"));
  mixin(MyContent!("text", "BS4DescriptionText"));
}
mixin(H5Calls!"BS4DescriptionBlock");

unittest {
	assert(Assert(BS4DescriptionBlock,`<div class="description-block"></div>`));
}

class DBS4DescriptionHeader : DBS4Obj {
	mixin(H5This!("H5", ["description-header"], null));
}
mixin(H5Calls!"BS4DescriptionHeader");

class DBS4DescriptionText : DBS4Obj {
	mixin(H5This!("Span", ["description-span"], null));
}
mixin(H5Calls!"BS4DescriptionText");
