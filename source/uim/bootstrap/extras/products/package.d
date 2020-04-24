module uim.bootstrap.extras.products;

import uim.bootstrap;

class DBS4ProductTab : DBS4NavTabs {
	mixin(H5This!(null, null, null));

  mixin(MyContent!("desc", "BS4ProductDescTab"));
  mixin(MyContent!("comments", "BS4ProductCommentsTab"));
  mixin(MyContent!("rating", "BS4ProductRatingTab"));
}
mixin(H5Calls!("BS4ProductTab", "DBS4ProductTab"));

class DBS4ProductDescTab : DBS4NavLink {
	mixin(H5This!(null, ["nav-item"], `["data-toggle":"tab", "role":"tab", "aria-controls":"product-desc", "aria-selected":"true"]`));
}
mixin(H5Calls!("BS4ProductDescTab", "DBS4ProductDescTab"));

class DBS4ProductCommentsTab : DBS4NavLink {
	mixin(H5This!(null, ["nav-item"], `["data-toggle":"tab", "role":"tab", "aria-controls":"product-comments", "aria-selected":"false"]`));
}
mixin(H5Calls!("BS4ProductCommentsTab", "DBS4ProductCommentsTab"));

class DBS4ProductRatingTab : DBS4NavLink {
	mixin(H5This!(null, ["nav-item"], `["data-toggle":"tab", "role":"tab", "aria-controls":"product-rating", "aria-selected":"false"]`));
}
mixin(H5Calls!("BS4ProductRatingTab", "DBS4ProductRatingTab"));

class DBS4ProductDescPane : DBS4TabPane {
	mixin(H5This!(null, ["nav-item"], ));
}
mixin(H5Calls!("BS4ProductDescPane", "DBS4ProductDescPane"));

class DBS4ProductCommentsPane : DBS4TabPane {
	mixin(H5This!(null, ["nav-item"], null));
}
mixin(H5Calls!("BS4ProductCommentsPane", "DBS4ProductCommentsPane"));

class DBS4ProductRatingPane : DBS4TabPane {
	mixin(H5This!(null, ["nav-item"], null));
}
mixin(H5Calls!("BS4ProductRatingPane", "DBS4ProductRatingPane"));

