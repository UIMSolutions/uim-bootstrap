module uim.bootstrap.bs5.demos.components.badges;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/badges", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Badges - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Badges")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "badges")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Badges"),
      H5Hr,

demoBs5Example("headings", "Headings with badges", 
  H5Div(
    H5H1(H5String("H1 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H2(H5String("H2 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H3(H5String("H3 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H4(H5String("H4 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H5(H5String("H5 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H6(H5String("H6 with "), BS5Badge(["bg-secondary"], "Badge"))), 
  `H5H1(H5String("H1 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H2(H5String("H2 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H3(H5String("H3 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H4(H5String("H4 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H5(H5String("H5 with "), BS5Badge(["bg-secondary"], "Badge")),
    H5H6(H5String("H6 with "), BS5Badge(["bg-secondary"], "Badge"))`, 
`H5H1(H5String("H1 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H2(H5String("H2 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H3(H5String("H3 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H4([H5String("H4 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H5(H5String("H5 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H6(H5String("H6 mit "), BS5Badge(["bg-secondary"], "Badge"))`),

demoBs5Example("buttons", "Buttons with Badges", 
  H5Div(
    BS5Button(["btn-secondary"], H5String("Notifications "), BS5Badge(["bg-light", "text-dark"], "10"))
    ), 
`BS5Button(["btn-secondary"], H5String("Notifications "), BS5Badge(["bg-light", "text-dark"], "10"))`, 
`BS5Button(["btn-secondary"], H5String("Notifications "), BS5Badge(["bg-light", "text-dark"], "10"))`
),

demoBs5Example("accessible", "Buttons with accessible badges", 
  H5Div(
    BS5Button(["btn-secondary"], 
      H5String("Profile "),
      BS5Badge(["bg-light", "text-dark"], "3"),
      H5Span(["visually-hidden"], "unread messages"))
  ), 
  `BS5Button(["btn-secondary"], 
      H5String("Profile "),
      BS5Badge(["bg-light", "text-dark"], "3"),
      H5Span(["visually-hidden"], "unread messages"))`, ``),

demoBs5Example("bgcolors", "With background colors", 
  H5Div(
    BS5Badge(["bg-primary"], "Primary"), 
    BS5Badge(["bg-secondary"], "Secondary"), 
    BS5Badge(["bg-success"], "Success"), 
    BS5Badge(["bg-danger"], "Danger"), 
    BS5Badge(["bg-warning text-dark"], "Warning"), 
    BS5Badge(["bg-info"], "Info"), 
    BS5Badge(["bg-light", "text-dark"], "Light"), 
    BS5Badge(["bg-dark"], "Dark")
    ), 
    `BS5Badge(["bg-primary"], "Primary"), 
    BS5Badge(["bg-secondary"], "Secondary"), 
    BS5Badge(["bg-success"], "Success"), 
    BS5Badge(["bg-danger"], "Danger"), 
    BS5Badge(["bg-warning text-dark"], "Warning"), 
    BS5Badge(["bg-info"], "Info"), 
    BS5Badge(["bg-light", "text-dark"], "Light"), 
    BS5Badge(["bg-dark"], "Dark")`, ``), 

demoBs5Example("pills", "Pill style", 
  H5Div(
    BS5Badge(["rounded-pill", "bg-primary"], "Primary"),
    BS5Badge(["rounded-pill", "bg-secondary"], "Secondary"),
    BS5Badge(["rounded-pill", "bg-success"], "Success"),
    BS5Badge(["rounded-pill", "bg-danger"], "Danger"),
    BS5Badge(["rounded-pill", "bg-warning", "text-dark"], "Warning"),
    BS5Badge(["rounded-pill", "bg-info"], "Info"),
    BS5Badge(["rounded-pill", "bg-light", "text-dark"], "Light"),
    BS5Badge(["rounded-pill", "bg-dark"], "Dark")
    ), 
    `BS5Badge(["rounded-pill", "bg-primary"], "Primary"),
    BS5Badge(["rounded-pill", "bg-secondary"], "Secondary"),
    BS5Badge(["rounded-pill", "bg-success"], "Success"),
    BS5Badge(["rounded-pill", "bg-danger"], "Danger"),
    BS5Badge(["rounded-pill", "bg-warning", "text-dark"], "Warning"),
    BS5Badge(["rounded-pill", "bg-info"], "Info"),
    BS5Badge(["rounded-pill", "bg-light", "text-dark"], "Light"),
    BS5Badge(["rounded-pill", "bg-dark"], "Dark")`, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}