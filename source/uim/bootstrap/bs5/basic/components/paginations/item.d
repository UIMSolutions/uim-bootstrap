module uim.bootstrap.bs5.basic.components.paginations.item;

@safe: 
import uim.bootstrap;

class DBS5PageItem : DBS5Obj {
	mixin(H5This!("LI", ["page-item"]));

	mixin(MyContent!("link", "BS5PageLink"));

	O active(this O)(bool value = true) { if (value) this.classes("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { if (value) this.classes("disabled").attributes("tabindex", "-1"); return cast(O)this; }
}
mixin(H5Calls!"BS5PageItem");

unittest {
	assert(BS5PageItem, `<li class="page-item"></li>`));
	assert(BS5PageItem.active, `<li class="active page-item"></li>`));
	assert(BS5PageItem.disabled, `<li class="disabled page-item" tabindex="-1"></li>`));
}