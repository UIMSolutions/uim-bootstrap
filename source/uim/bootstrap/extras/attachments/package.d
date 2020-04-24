module uim.bootstrap.extras.attachments;

import uim.bootstrap;

class DBS4AttachmentBlock : DBS4Obj {
	mixin(H5This!("Div", ["attachment-block"], null));

  mixin(MyContent!("image", "BS4AttachmentImage"));
  mixin(MyContent!("pushed", "BS4AttachmentPushed"));
}
mixin(H5Calls!"BS4AttachmentBlock");

unittest {
	assert(Assert(BS4AttachmentBlock,`<div class="attachment-block"></div>`));
}

class DBS4AttachmentImage : DBS4Image {
	mixin(H5This!("", ["attachment-img"]));
}
mixin(H5Calls!"BS4AttachmentImage");

class DBS4AttachmentPushed : DBS4Obj {
	mixin(H5This!("Div", ["attachment-pushed"]));

	mixin(MyContent!("heading", "BS4AttachmentHeading"));
  mixin(MyContent!("text", "BS4AttachmentText"));
}
mixin(H5Calls!"BS4AttachmentPushed");

class DBS4AttachmentHeading : DBS4Obj {
	mixin(H5This!("H4", ["attachment-heading"]));
}
mixin(H5Calls!"BS4AttachmentHeading");

class DBS4AttachmentText : DBS4Obj {
	mixin(H5This!("Div", ["attachment-text"]));
}
mixin(H5Calls!"BS4AttachmentText");
