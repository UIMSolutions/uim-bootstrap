module uim.bootstrap.bs5.demos.components.alerts;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/alerts", new class DH5AppPage {
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
      return `
<main>
  <div class="container-fluid mt-3 bg-light">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">Alerts</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Alerts</h2>
        <hr>`~
        demoExample("default", "Default", 
H5Div(
  BS5Alert("Primary").color("primary"),
  BS5Alert("Secondary").color("secondary"),
  BS5Alert("Success").color("success"),
  BS5Alert("Danger").color("danger"),
  BS5Alert("Warning").color("warning"),
  BS5Alert("Info").color("info"),
  BS5Alert("Dark").color("dark"),
).toString,
`BS5Alert(["alert-primary"], "Primary")
BS5Alert(["alert-secondary"], "Secondary")
BS5Alert(["alert-success"], "Success")
BS5Alert(["alert-danger"], "Danger")
BS5Alert(["alert-warning"], "Warning")
BS5Alert(["alert-info"], "Info")
BS5Alert(["alert-dark"], "Dark")
<p class="text-muted">Alternative</p>
BS5Alert("Primary").color("primary")
BS5Alert("Secondary").color("secondary")
BS5Alert("Success").color("success")
BS5Alert("Danger").color("danger")
BS5Alert("Warning").color("warning")
BS5Alert("Info").color("info")
BS5Alert("Dark").color("dark")`,
`<div class="alert alert-primary" role="alert">Primary</div>
<div class="alert alert-secondary" role="alert">Secondary</div>
<div class="alert alert-success" role="alert">Success</div>
<div class="alert alert-danger" role="alert">Danger</div>
<div class="alert alert-warning" role="alert">Warning</div>
<div class="alert alert-info" role="alert">Info</div>
<div class="alert alert-dark" role="alert">Dark</div>`)~
            demoExample("link", "Link Farbe", 
H5Div(
  BS5Alert(`Primary mit <a href="#" class="alert-link">Beispiellink</a>.`).color("primary"),
  BS5Alert(`Secondary mit <a href="#" class="alert-link">Beispiellink</a>.`).color("secondary"),
  BS5Alert(`Success mit <a href="#" class="alert-link">Beispiellink</a>.`).color("success"),
  BS5Alert(`Danger mit <a href="#" class="alert-link">Beispiellink</a>.`).color("danger"),
  BS5Alert(`Warning mit <a href="#" class="alert-link">Beispiellink</a>.`).color("warning"),
  BS5Alert(`Info mit <a href="#" class="alert-link">Beispiellink</a>.`).color("info"),
  BS5Alert(`Dark mit <a href="#" class="alert-link">Beispiellink</a>.`).color("dark"),
).toString,
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
`<div class="alert alert-primary" role="alert">Primary mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-secondary" role="alert">Secondary mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-success" role="alert">Success mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-danger" role="alert">Danger mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-warning" role="alert">Warning mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-info" role="alert">Info mit <a href="#" class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-dark" role="alert">Dark mit <a href="#" class="alert-link">Beispiellink</a>.</div>`)~
demoExample("addition", "Zusätzliche Inhalte", 
  H5Div(
    BS5Alert.color("success")(
      H5H4(["alert-heading"], "Success!"),
      H5P("You have accomplished <a href=\"#\" class=\"alert-link\">your goal</a>."),
      H5P("You can now continue and start defining a new goal to reach.")),
    BS5Alert.color("danger")(
      H5H4(["alert-heading"], "Danger!"),
      H5P("Something is wrong. <a href=\"#\" class=\"alert-link\">Please try again.</a>"),
      H5P("Make sure that you enter the correct user name and corresponding password."),
      ),
    BS5Alert.color("warning")(
      H5H4(["alert-heading"], "Warning!"),
      H5P("Be careful when you <a href=\"#\" class=\"alert-link\">drive.</a>"),
      H5P("Driving is a serious task and should thus be taken seriously.")),
    BS5Alert.color("info")(
      H5H4(["alert-heading"], "Info!"),
      H5P("Please read the provided <a href=\"#\" class=\"alert-link\">information.</a>"),
      H5P("The information will help you get a better understanding of the topic."))
      ).toString,
`<div class="alert alert-success" role="alert">
      <h4 class="alert-heading">Success!</h4>
      <p>You have accomplished <a href="#" class="alert-link">your goal</a>.</p>
      <p>You can now continue and start defining a new goal to reach.</p>
    </div>
    <div class="alert alert-danger" role="alert">
      <h4 class="alert-heading">Danger!</h4>
      <p>Something is wrong. <a href="#" class="alert-link">Please try again.</a></p>
      <p>Make sure that you enter the correct user name and corresponding password.</p>
    </div>
    <div class="alert alert-warning" role="alert">
      <h4 class="alert-heading">Warning!</h4>
      <p>Be careful when you <a href="#" class="alert-link">drive.</a></p>
      <p>Driving is a serious task and should thus be taken seriously.</p>
    </div>
    <div class="alert alert-info" role="alert">
      <h4 class="alert-heading">Info!</h4>
      <p>Please read the provided <a href="#" class="alert-link">information.</a></p>
      <p>The information will help you get a better understanding of the topic.</p>
</div>`,
`BS5Alert.color("success")(
    H5H4(["alert-heading"], "Success!"),
    H5P("You have accomplished <a href=\"#\" class=\"alert-link\">your goal</a>."),
    H5P("You can now continue and start defining a new goal to reach.")),
  BS5Alert.color("danger")(
    H5H4(["alert-heading"], "Danger!"),
    H5P("Something is wrong. <a href=\"#\" class=\"alert-link\">Please try again.</a>"),
    H5P("Make sure that you enter the correct user name and corresponding password."),
    ),
  BS5Alert.color("warning")(
    H5H4(["alert-heading"], "Warning!"),
    H5P("Be careful when you <a href=\"#\" class=\"alert-link\">drive.</a>"),
    H5P("Driving is a serious task and should thus be taken seriously.")),
  BS5Alert.color("info")(
    H5H4(["alert-heading"], "Info!"),
    H5P("Please read the provided <a href=\"#\" class=\"alert-link\">information.</a>"),
    H5P("The information will help you get a better understanding of the topic.")
)`)~

demoExample("dismissing", "Entfernbar", 
BS5Alert(["alert-success", "alert-dismissible", "fade", "show"], 
  BS5Button(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
  H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird.")
).toString,
`<div class="alert alert-success alert-dismissible fade show" role="alert">
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  <strong>Achtung!</strong> Dieser Alert verschwindet, wenn der &times; Button getätigt wird.
</div>`,
`BS5Alert(["alert-success", "alert-dismissible", "fade", "show"], 
  BS5Button(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
  H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird.")
)`)~
          `</div>
        </div>
      </div>
      <div class="col-12 col-lg-2">
      </div>
   </main>
      `;
    }
  });
}