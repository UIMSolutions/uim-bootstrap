module uim.bootstrap.bs5.demos.components.paginations;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/paginations", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Paginations - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Paginations")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "paginations")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Paginations"),
      H5Hr,

demoBs5Example("numberstext", "Numbers and text",
  H5Div(
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next"))))
  ), `BS5Pagination(
  BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
  BS5PageItem(BS5PageLink(["href":"#"], "1")),
  BS5PageItem(BS5PageLink(["href":"#"], "2")),
  BS5PageItem(BS5PageLink(["href":"#"], "3")),
  BS5PageItem(BS5PageLink(["href":"#"], "Next"))))`, ``),

demoBs5Example("numbersicons", "Numbers and icons",
  H5Div(
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(
        BS5PageItem(
          BS5PageLink(["href":"#", "aria-label":"Previous"], H5Span(["aria-hidden":"true"], "&laquo;")))),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(
          BS5PageLink(["href":"#", "aria-label":"Next"], H5Span(["aria-hidden":"true"], "&raquo;"))))
  ), `BS5Nav(["aria-label":"Search results pages"], 
  BS5Pagination(
    BS5PageItem(
      BS5PageLink(["href":"#", "aria-label":"Previous"], H5Span(["aria-hidden":"true"], "&laquo;")))),
    BS5PageItem(BS5PageLink(["href":"#"], "1")),
    BS5PageItem(BS5PageLink(["href":"#"], "2")),
    BS5PageItem(BS5PageLink(["href":"#"], "3")),
    BS5PageItem(
      BS5PageLink(["href":"#", "aria-label":"Next"], H5Span(["aria-hidden":"true"], "&raquo;"))))`, ``),

demoBs5Example("activedisabled", "Active and disabled items",
  H5Div(
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(["active"], ["aria-current":"page"], 
          BS5PageLink(["href":"#"], H5Span(["visually-hidden"], "(current)"))),
        BS5PageItem(["disabled"],  
          BS5PageLink(["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Next"))))
  ), `BS5Nav(["aria-label":"Search results pages"], 
  BS5Pagination(
    BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
    BS5PageItem(BS5PageLink(["href":"#"], "1")),
    BS5PageItem(BS5PageLink(["href":"#"], "2")),
    BS5PageItem(BS5PageLink(["href":"#"], "3")),
    BS5PageItem(["active"], ["aria-current":"page"], 
      BS5PageLink(["href":"#"], H5Span(["visually-hidden"], "(current)"))),
    BS5PageItem(["disabled"],  
      BS5PageLink(["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Next"))))`, ``),

demoBs5Example("activedisabledanchors", "Active and disabled items without anchors",
  H5Div(
    H5P("<code>&lt;span&gt;</code> elements for active and disabled page links:"),
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(["active"], ["aria-current":"page"],
          H5Span(["page-link"], H5String(" 3 "), 
            H5Span(["visually-hidden"], "(current)"))),
        BS5PageItem(["disabled"],
          H5Span(["page-link"], "Next"))))), ``, ``), 

demoBs5Example("sizing", "Sizing",
  H5Div(
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(["pagination-sm"],
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next")))),
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next")))),
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(["pagination-lg"],
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next"))))), ``, ``),

demoBs5Example("alignment", "Alignment",
  H5Div(
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(["justify-content-center"],
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next")))),
    BS5Nav(["aria-label":"Search results pages"], 
      BS5Pagination(["justify-content-end"],
        BS5PageItem(BS5PageLink(["href":"#"], "Previous")),
        BS5PageItem(BS5PageLink(["href":"#"], "1")),
        BS5PageItem(BS5PageLink(["href":"#"], "2")),
        BS5PageItem(BS5PageLink(["href":"#"], "3")),
        BS5PageItem(BS5PageLink(["href":"#"], "Next"))))), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}