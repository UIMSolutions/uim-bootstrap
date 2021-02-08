module uim.bootstrap.bs5.demos.components.collapses;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/collapses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Collapses - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto linkExample = demoBs5Example("link", "Link<p>Show and hide other content with link using the 'href' attribute</p>", 
  H5Div(
    BS5ButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "aria-expanded":"false", "aria-controls":"hrefCollapse"], "Link with href"),
    BS5Collapse("hrefCollapse",
      BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))
      ), 
`BS5ButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "aria-expanded":"false", "aria-controls":"hrefCollapse"], "Link with href"),
  BS5Collapse("hrefCollapse",
    BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
    Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))`, 
      ``);

auto buttonExample = demoBs5Example("button", "Button<p>Show and hide other content with button using the 'data-bs-target' attribute</p>", 
  H5Div(
    BS5Button(["btn-primary"], ["data-bs-toggle":"collapse", "data-bs-target":"#dataTargetCollapse", "aria-expanded":"false", "aria-controls":"dataTargetCollapse"], "Button with data-bs-target"),
    BS5Collapse("dataTargetCollapse",
      BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))), ``, ``);

auto multipleExample = demoBs5Example("multiple", "Multiple targets", 
  H5Div(
    BS5ButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "data-bs-target":".multiple-collapse", "aria-expanded":"false", "aria-controls":"multipleCollapse1 multipleCollapse2"], "Button with data-bs-target"),
    BS5Collapse("multipleCollapse1", ["multiple-collapse"], 
      BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
    BS5Collapse("multipleCollapse2", ["multiple-collapse"], 
      BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))
  ), 
  `BS5ButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "data-bs-target":".multiple-collapse", "aria-expanded":"false", "aria-controls":"multipleCollapse1 multipleCollapse2"], "Button with data-bs-target"),
  BS5Collapse("multipleCollapse1", ["multiple-collapse"], 
    BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
  BS5Collapse("multipleCollapse2", ["multiple-collapse"], 
    BS5Alert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))`, 
  `H5Button(["type":"button" ["btn btn-primary" data-bs-toggle="collapse" data-bs-target=".multiple-collapse" aria-expanded="false" aria-controls="multipleCollapse1 multipleCollapse2"]Button with data-bs-target")
H5Div(["collapse multiple-collapse" id="multipleCollapse1"]
  H5Div(["alert alert-success"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.)
)
H5Div(["collapse multiple-collapse" id="multipleCollapse2"]
  H5Div(["alert alert-success"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.)
)`);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Collapses")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "collapses")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      dateInfo(created, changed),
      H5H2(["display-4"], "Collapses"),
      H5Hr,

      linkExample, 
      buttonExample,
      multipleExample
    
    ))).toString; }
  });
}