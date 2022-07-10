module uim.bootstrap.bs5.basic.components.forms.floating;

@safe: 
import uim.bootstrap;

class DBS5FormFloating : DBS5Obj {
	mixin(H5This!("Div", ["form-floating"]));

  O label(this O)(string forElement, string text) {
    BS5FormFloating(H5Label(["for":forElement], text));
    return cast(O)this;
  }
}
mixin(H5Calls!"BS5FormFloating");

unittest {
	assert(Assert(BS5FormFloating, `<div class="form-floating"></div>`));
}