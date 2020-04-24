module uim.bootstrap.extras.general;

import uim.bootstrap;

class DBS4CommentText : DBS4Obj {
	mixin(H5This!("Div", ["comment-text"], null));
}
mixin(H5Calls!"BS4CommentText");

unittest {
	assert(Assert(BS4CommentText,`<div class="comment-text"></div>`));
}