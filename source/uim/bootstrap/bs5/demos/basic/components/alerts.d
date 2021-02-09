module uim.bootstrap.bs5.demos.components.alerts;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/alerts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Alerts - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Alerts")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "alerts")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Alerts"),
      H5Hr,

demoBs5Example("default", "Default", 
  H5Div(
    BS5Alert("Primary").color("primary"),
    BS5Alert("Secondary").color("secondary"),
    BS5Alert("Success").color("success"),
    BS5Alert("Danger").color("danger"),
    BS5Alert("Warning").color("warning"),
    BS5Alert("Info").color("info"),
    BS5Alert("Dark").color("dark")),
`BS5Alert(["alert-primary"], "Primary")
BS5Alert(["alert-secondary"], "Secondary")
BS5Alert(["alert-success"], "Success")
BS5Alert(["alert-danger"], "Danger")
BS5Alert(["alert-warning"], "Warning")
BS5Alert(["alert-info"], "Info")
BS5Alert(["alert-dark"], "Dark")
</code></pre>H5P(["text-muted"]Alternative")<pre><code>
BS5Alert("Primary").color("primary")
BS5Alert("Secondary").color("secondary")
BS5Alert("Success").color("success")
BS5Alert("Danger").color("danger")
BS5Alert("Warning").color("warning")
BS5Alert("Info").color("info")
BS5Alert("Dark").color("dark")`,
`H5Div(["alert alert-primary" role="alert"]Primary)
H5Div(["alert alert-secondary" role="alert"]Secondary)
H5Div(["alert alert-success" role="alert"]Success)
H5Div(["alert alert-danger" role="alert"]Danger)
H5Div(["alert alert-warning" role="alert"]Warning)
H5Div(["alert alert-info" role="alert"]Info)
H5Div(["alert alert-dark" role="alert"]Dark)`),

demoBs5Example("link", "Link Farbe", 
  H5Div(
    BS5Alert(`Primary mit <a href="#" class="alert-link">Beispiellink</a>.`).color("primary"),
    BS5Alert(`Secondary mit <a href="#" class="alert-link">Beispiellink</a>.`).color("secondary"),
    BS5Alert(`Success mit <a href="#" class="alert-link">Beispiellink</a>.`).color("success"),
    BS5Alert(`Danger mit <a href="#" class="alert-link">Beispiellink</a>.`).color("danger"),
    BS5Alert(`Warning mit <a href="#" class="alert-link">Beispiellink</a>.`).color("warning"),
    BS5Alert(`Info mit <a href="#" class="alert-link">Beispiellink</a>.`).color("info"),
    BS5Alert(`Dark mit <a href="#" class="alert-link">Beispiellink</a>.`).color("dark")),
`BS5Alert(["alert-primary"], "Primary mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-secondary"], "Secondary mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-success"], "Success mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-danger"], "Danger mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-warning"], "Warning mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-info"], "Info mit <a href="#" class="alert-link">Beispiellink</a>.")
BS5Alert(["alert-dark"], "Dark mit <a href="#" class="alert-link">Beispiellink</a>.")

- Weitere Möglichkeit -

BS5Alert("Primary mit <a href="#" class="alert-link">Beispiellink</a>.").color("primary")
BS5Alert("Secondary mit <a href="#" class="alert-link">Beispiellink</a>.").color("secondary")
BS5Alert("Success mit <a href="#" class="alert-link">Beispiellink</a>.").color("§success")
BS5Alert("Danger mit <a href="#" class="alert-link">Beispiellink</a>.").color("danger")
BS5Alert("Warning mit <a href="#" class="alert-link">Beispiellink</a>.").color("warning")
BS5Alert("Info mit <a href="#" class="alert-link">Beispiellink</a>.").color("info")
BS5Alert("Dark mit <a href="#" class="alert-link">Beispiellink</a>.").color("dark")`,
`H5Div(["alert alert-primary" role="alert"]Primary mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-secondary" role="alert"]Secondary mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-success" role="alert"]Success mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-danger" role="alert"]Danger mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-warning" role="alert"]Warning mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-info" role="alert"]Info mit <a href="#" class="alert-link">Beispiellink</a>.)
H5Div(["alert alert-dark" role="alert"]Dark mit <a href="#" class="alert-link">Beispiellink</a>.)`),

demoBs5Example("addition", "Zusätzliche Inhalte", 
  H5Div(
    BS5Alert.color("success")(
      H5H4(["alert-heading"], "Success!"),
      H5P("You have accomplished <a href=\"#\" class=\"alert-link\"]your goal</a>."),
      H5P("You can now continue and start defining a new goal to reach.")),
    BS5Alert.color("danger")(
      H5H4(["alert-heading"], "Danger!"),
      H5P("Something is wrong. <a href=\"#\" class=\"alert-link\"]Please try again.</a>"),
      H5P("Make sure that you enter the correct user name and corresponding password."),
      ),
    BS5Alert.color("warning")(
      H5H4(["alert-heading"], "Warning!"),
      H5P("Be careful when you <a href=\"#\" class=\"alert-link\"]drive.</a>"),
      H5P("Driving is a serious task and should thus be taken seriously.")),
    BS5Alert.color("info")(
      H5H4(["alert-heading"], "Info!"),
      H5P("Please read the provided <a href=\"#\" class=\"alert-link\"]information.</a>"),
      H5P("The information will help you get a better understanding of the topic."))),
`H5Div(["alert alert-success" role="alert"]
      <h4 ["alert-heading"]Success!")
      <p>You have accomplished H5A(["href":"#",  ["alert-link"]your goal</a>.")
      <p>You can now continue and start defining a new goal to reach.")
    )
    H5Div(["alert alert-danger" role="alert"]
      <h4 ["alert-heading"]Danger!")
      <p>Something is wrong. H5A(["href":"#",  ["alert-link"]Please try again.</a>")
      <p>Make sure that you enter the correct user name and corresponding password.")
    )
    H5Div(["alert alert-warning" role="alert"]
      <h4 ["alert-heading"]Warning!")
      <p>Be careful when you H5A(["href":"#",  ["alert-link"]drive.</a>")
      <p>Driving is a serious task and should thus be taken seriously.")
    )
    H5Div(["alert alert-info" role="alert"]
      <h4 ["alert-heading"]Info!")
      <p>Please read the provided H5A(["href":"#",  ["alert-link"]information.</a>")
      <p>The information will help you get a better understanding of the topic.")
)`,
`BS5Alert.color("success")(
    H5H4(["alert-heading"], "Success!"),
    H5P("You have accomplished <a href=\"#\" class=\"alert-link\"]your goal</a>."),
    H5P("You can now continue and start defining a new goal to reach.")),
  BS5Alert.color("danger")(
    H5H4(["alert-heading"], "Danger!"),
    H5P("Something is wrong. <a href=\"#\" class=\"alert-link\"]Please try again.</a>"),
    H5P("Make sure that you enter the correct user name and corresponding password."),
    ),
  BS5Alert.color("warning")(
    H5H4(["alert-heading"], "Warning!"),
    H5P("Be careful when you <a href=\"#\" class=\"alert-link\"]drive.</a>"),
    H5P("Driving is a serious task and should thus be taken seriously.")),
  BS5Alert.color("info")(
    H5H4(["alert-heading"], "Info!"),
    H5P("Please read the provided <a href=\"#\" class=\"alert-link\"]information.</a>"),
    H5P("The information will help you get a better understanding of the topic.")
)`),

demoBs5Example("dismissing", "Entfernbar", 
  H5Div(
    BS5Alert(["alert-success", "alert-dismissible", "fade", "show"], 
      BS5Button(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
      H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird."))),
`H5Div(["alert alert-success alert-dismissible fade show" role="alert"]
  H5Button(["type":"button" ["btn-close" data-bs-dismiss="alert" "aria-label":"Close"]")
  <strong>Achtung!</strong> Dieser Alert verschwindet, wenn der &times; Button getätigt wird.
)`,
`BS5Alert(["alert-success", "alert-dismissible", "fade", "show"], 
  BS5Button(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
  H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird.")
)`)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}