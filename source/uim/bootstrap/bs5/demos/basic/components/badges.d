module uim.bootstrap.bs5.demos.components.badges;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/badges", new class DH5AppPage {
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
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Badges")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Badges"),
      H5Hr,

demoBs5Example("headings", "Headings mit Badges", 
  H5Div(
    H5H1(H5String("H1 mit "), BS5Badge(["bg-secondary"], "Badge")),
    H5H2(H5String("H2 mit "), BS5Badge(["bg-secondary"], "Badge")),
    H5H3(H5String("H3 mit "), BS5Badge(["bg-secondary"], "Badge")),
    H5H4(H5String("H4 mit "), BS5Badge(["bg-secondary"], "Badge")),
    H5H5(H5String("H5 mit "), BS5Badge(["bg-secondary"], "Badge")),
    H5H6(H5String("H6 mit "), BS5Badge(["bg-secondary"], "Badge"))), 
  `<h1>H1 mit H5Span(["badge bg-secondary"]Badge")</h1>
<h2>H2 mit H5Span(["badge bg-secondary"]Badge")</h2>
<h3>H3 mit H5Span(["badge bg-secondary"]Badge")")
H5H4(["H4 mit H5Span(["badge bg-secondary"]Badge")")
<h5>H5 mit H5Span(["badge bg-secondary"]Badge")</h5>
<h6>H6 mit H5Span(["badge bg-secondary"]Badge")</h6>`, 
`H5H1(H5String("H1 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H2(H5String("H2 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H3(H5String("H3 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H4([H5String("H4 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H5(H5String("H5 mit "), BS5Badge(["bg-secondary"], "Badge"))
H5H6(H5String("H6 mit "), BS5Badge(["bg-secondary"], "Badge"))`),

demoBs5Example("buttons", "Buttons mit Badges", 
  H5Div(
    BS5Button(["btn-secondary"], H5String("Notifications "), BS5Badge(["bg-light", "text-dark"], "10"))), 
`<button ["btn btn-secondary"]Notifications H5Span(["badge bg-light text-dark"]10")")`, 
`BS5Button(["btn-secondary"], H5String("Notifications "), BS5Badge(["bg-light", "text-dark"], "10"))`
),

demoBs5Example("accessible", "Buttons mit accessible Badges", 
  H5Div(
    BS5Button(["btn-secondary"], 
      H5String("Profile"),
      BS5Badge(["bg-light", "text-dark"], "3"),
      H5Span(["visually-hidden"], "unread messages"))), ``, ``),

demoBs5Example("bgcolors", "Hintergrundfarben", 
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

demoBs5Example("pills", "Pill badges", 
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