module source.uim.bootstrap.bs5.demos.forms.validation;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/validation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Validation - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
        return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Validation")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Validation"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
/*
  <div ["container mt-3"]
    <div ["row"]
      <div ["col-12 col-lg-2"]
      )
      <div ["col-12 col-lg-8"]
        <h2 ["component display-4"]Validation</h2>
        <hr>

        <div ["mb-5"]
          <h3 ["text-muted"]Browser defaults</h3>
          H5Div(
            <form id="formValidationDefault"]
              <div ["mb-3"]
                H5Label(["for":"validationDefaultText"]Text input")
                H5Input(["type":"text" ["form-control" id="validationDefaultText" required>
              )
              <div ["mb-3"]
                <div ["input-group"]
                  <span ["input-group-text" id="validationDefaultInputGroup"]$</span>
                  H5Input(["type":"number" ["form-control" aria-label="Amount" aria-describedby="validationDefaultInputGroup" required>
                )
              )
              <div ["mb-3"]
                H5Label(["for":"validationDefaultTextarea"]Textarea")
                <textarea ["form-control" id="validationDefaultTextarea" rows="5" placeholder="Write your message here." required></textarea>
              )
              <div ["mb-3"]
                H5Label(["for":"validationDefaultSelect"]Select one")
                H5Select(["form-select" id="validationDefaultSelect" required>
                  H5Option(["value":""]Select")
                  H5Option(["value":"1"], "Option one")
                  H5Option(["value":"2"], "Option two")
                  H5Option(["value":"3"], "Option three")
                )
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationDefaultCheck" required>
                  <label ["form-check-label" for="validationDefaultCheck"]Checkbox")
                )
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationDefaultRadio" id="validationDefaultRadio1" required>
                  <label ["form-check-label" for="validationDefaultRadio1"]Radio")
                )
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationDefaultRadio" id="validationDefaultRadio2" required>
                  <label ["form-check-label" for="validationDefaultRadio2"]Radio")
                )
              )
              <div ["mb-3"]
                <div ["form-check form-switch"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationDefaultSwitch" required>
                  <label ["form-check-label" for="validationDefaultSwitch"]Switch")
                )
              )
              <div ["mb-3"]
                <div ["form-file"]
                  H5Input(["type":"file" ["form-file-input" id="validationDefaultFile" required>
                  <label ["form-file-label" for="validationDefaultFile"]
                    <span ["form-file-text"]Choose file...</span>
                    <span ["form-file-button"]Browse</span>
                  ")
                )
              )
              <button type="submit" ["btn btn-primary"]Submit form</button>
            </form>
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Client side</h3>
          H5Div(
            <form id="formValidationClient" ["needs-validation" novalidate>
              <div ["mb-3"]
                H5Label(["for":"validationClientText"]Text input")
                H5Input(["type":"text" ["form-control" id="validationClientText" required>
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                <div ["input-group"]
                  <span ["input-group-text" id="validationClientInputGroup"]$</span>
                  H5Input(["type":"number" ["form-control" aria-label="Amount" aria-describedby="validationClientInputGroup" required>
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                H5Label(["for":"validationClientTextarea"]Textarea")
                <textarea ["form-control" id="validationClientTextarea" rows="5" placeholder="Write your message here." required></textarea>
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                H5Label(["for":"validationClientSelect"]Select one")
                H5Select(["form-select" id="validationClientSelect" required>
                  H5Option(["value":""]Select")
                  H5Option(["value":"1"], "Option one")
                  H5Option(["value":"2"], "Option two")
                  H5Option(["value":"3"], "Option three")
                )
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationClientCheck" required>
                  <label ["form-check-label" for="validationClientCheck"]Checkbox")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationClientRadio" id="validationClientRadio1" required>
                  <label ["form-check-label" for="validationClientRadio1"]Radio")
                )
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationClientRadio" id="validationClientRadio2" required>
                  <label ["form-check-label" for="validationClientRadio2"]Radio")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-check form-switch"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationClientSwitch" required>
                  <label ["form-check-label" for="validationClientSwitch"]Switch")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-file"]
                  H5Input(["type":"file" ["form-file-input" id="validationClientFile" required>
                  <label ["form-file-label" for="validationClientFile"]
                    <span ["form-file-text"]Choose file...</span>
                    <span ["form-file-button"]Browse</span>
                  ")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <button type="submit" ["btn btn-primary"]Submit form</button>
            </form>
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Server side</h3>
          H5Div(
            <form id="formValidationServer"]
              <div ["mb-3"]
                H5Label(["for":"validationServerText"]Text input")
                H5Input(["type":"text" ["form-control is-valid" id="validationServerText"]
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                <div ["input-group"]
                  <span ["input-group-text" id="validationServerInputGroup"]$</span>
                  H5Input(["type":"number" ["form-control is-invalid" aria-label="Amount" aria-describedby="validationServerInputGroup"]
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                H5Label(["for":"validationServerTextarea"]Textarea")
                <textarea ["form-control is-valid" id="validationServerTextarea" rows="5" placeholder="Write your message here."]</textarea>
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                H5Label(["for":"validationServerSelect"]Select one")
                H5Select(["form-select is-invalid" id="validationServerSelect"]
                  H5Option(["value":""]Select")
                  H5Option(["value":"1"], "Option one")
                  H5Option(["value":"2"], "Option two")
                  H5Option(["value":"3"], "Option three")
                )
                <p ["valid-feedback"]Valid feedback text</p>
                <p ["invalid-feedback"]Invalid feedback text</p>
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"checkbox" ["form-check-input is-valid" id="validationServerCheck"]
                  <label ["form-check-label" for="validationServerCheck"]Checkbox")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input is-invalid" name="validationServerRadio" id="validationServerRadio1"]
                  <label ["form-check-label" for="validationServerRadio1"]Radio")
                )
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input is-invalid" name="validationServerRadio" id="validationServerRadio2"]
                  <label ["form-check-label" for="validationServerRadio2"]Radio")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-check form-switch"]
                  H5Input(["type":"checkbox" ["form-check-input is-valid" id="validationServerSwitch"]
                  <label ["form-check-label" for="validationServerSwitch"]Switch")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <div ["mb-3"]
                <div ["form-file"]
                  H5Input(["type":"file" ["form-file-input is-invalid" id="validationServerFile"]
                  <label ["form-file-label" for="validationServerFile"]
                    <span ["form-file-text"]Choose file...</span>
                    <span ["form-file-button"]Browse</span>
                  ")
                  <p ["valid-feedback"]Valid feedback text</p>
                  <p ["invalid-feedback"]Invalid feedback text</p>
                )
              )
              <button type="submit" ["btn btn-primary"]Submit form</button>
            </form>
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Tooltips</h3>
          H5Div(
            <form id="formValidationTooltips" ["needs-validation" novalidate>
              <div ["mb-3 position-relative"]
                H5Label(["for":"validationTooltipsText"]Text input")
                H5Input(["type":"text" ["form-control" id="validationTooltipsText" required>
                <p ["valid-tooltip"]Valid feedback text</p>
                <p ["invalid-tooltip"]Invalid feedback text</p>
              )
              <div ["mb-3 position-relative"]
                <div ["input-group"]
                  <span ["input-group-text" id="validationTooltipsInputGroup"]$</span>
                  H5Input(["type":"number" ["form-control" aria-label="Amount" aria-describedby="validationTooltipsInputGroup" required>
                  <p ["valid-tooltip"]Valid feedback text</p>
                  <p ["invalid-tooltip"]Invalid feedback text</p>
                )
              )
              <div ["mb-3 position-relative"]
                H5Label(["for":"validationTooltipsTextarea"]Textarea")
                <textarea ["form-control" id="validationTooltipsTextarea" rows="5" placeholder="Write your message here." required></textarea>
                <p ["valid-tooltip"]Valid feedback text</p>
                <p ["invalid-tooltip"]Invalid feedback text</p>
              )
              <div ["mb-3 position-relative"]
                H5Label(["for":"validationTooltipsSelect"]Select one")
                H5Select(["form-select" id="validationTooltipsSelect" required>
                  H5Option(["value":""]Select")
                  H5Option(["value":"1"], "Option one")
                  H5Option(["value":"2"], "Option two")
                  H5Option(["value":"3"], "Option three")
                )
                <p ["valid-tooltip"]Valid feedback text</p>
                <p ["invalid-tooltip"]Invalid feedback text</p>
              )
              <div ["mb-3 position-relative"]
                <div ["form-check"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationTooltipsCheck" required>
                  <label ["form-check-label" for="validationTooltipsCheck"]Checkbox")
                  <p ["valid-tooltip"]Valid feedback text</p>
                  <p ["invalid-tooltip"]Invalid feedback text</p>
                )
              )
              <div ["mb-3 position-relative"]
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationTooltipsRadio" id="validationTooltipsRadio1" required>
                  <label ["form-check-label" for="validationTooltipsRadio1"]Radio")
                )
                <div ["form-check"]
                  H5Input(["type":"radio" ["form-check-input" name="validationTooltipsRadio" id="validationTooltipsRadio2" required>
                  <label ["form-check-label" for="validationTooltipsRadio2"]Radio")
                  <p ["valid-tooltip"]Valid feedback text</p>
                  <p ["invalid-tooltip"]Invalid feedback text</p>
                )
              )
              <div ["mb-3 position-relative"]
                <div ["form-check form-switch"]
                  H5Input(["type":"checkbox" ["form-check-input" id="validationTooltipsSwitch" required>
                  <label ["form-check-label" for="validationTooltipsSwitch"]Switch")
                  <p ["valid-tooltip"]Valid feedback text</p>
                  <p ["invalid-tooltip"]Invalid feedback text</p>
                )
              )
              <div ["mb-3 position-relative"]
                <div ["form-file"]
                  H5Input(["type":"file" ["form-file-input" id="validationTooltipsFile" required>
                  <label ["form-file-label" for="validationTooltipsFile"]
                    <span ["form-file-text"]Choose file...</span>
                    <span ["form-file-button"]Browse</span>
                  ")
                  <p ["valid-tooltip"]Valid feedback text</p>
                  <p ["invalid-tooltip"]Invalid feedback text</p>
                )
              )
              <button type="submit" ["btn btn-primary"]Submit form</button>
            </form>
          )
        )
      )
*/