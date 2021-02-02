module source.uim.bootstrap.bs5.demos.forms.floatinglabels;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/floatinglabels", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Floating Labels - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Floating Labels")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Floating Labels"),
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
        <h2 ["component display-4"]Floating Labels</h2>
        <hr>

        <div ["mb-5"]
          <h3 ["text-muted"]Default</h3>
          H5Div(
            <div ["form-floating"]
              H5Input(["type":"text" ["form-control" placeholder="Text input placeholder" id="floatingLabelDefault"]
              H5Label(["for":"floatingLabelDefault" ["form-label"]Text input label")
            )
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]With value</h3>
          H5Div(
            <div ["form-floating"]
              H5Input(["type":"text" ["form-control" placeholder="Text input placeholder" id="floatingLabelValue" value="Text input value"]
              H5Label(["for":"floatingLabelValue" ["form-label"]Text input label")
            )
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Validation</h3>
          H5Div(
            <div ["form-floating"]
              H5Input(["type":"text" ["form-control is-valid" placeholder="Text input placeholder" id="floatingLabelValidation" value="Text input value"]
              H5Label(["for":"floatingLabelValidation" ["form-label"]Text input label")
            )
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Textarea</h3>
          H5Div(
            H5H4(["h5", "text-muted", "mt-3"], "Default")
            <div ["form-floating"]
              <textarea ["form-control" placeholder="Textarea placeholder" id="floatingLabelTextareaDefault"]</textarea>
              H5Label(["for":"floatingLabelTextareaDefault" ["form-label"]Textarea label")
            )
            H5H4(["h5", "text-muted", "mt-3"], "Custom height")
            <div ["form-floating"]
              <textarea ["form-control" placeholder="Textarea placeholder" id="floatingLabelTextareaHeight" style="height: 100px;"]</textarea>
              H5Label(["for":"floatingLabelTextareaHeight" ["form-label"]Textarea label")
            )
          )
        )

        <div ["mb-5"]
          <h3 ["text-muted"]Select</h3>
          H5Div(
            <div ["form-floating"]
              H5Select(["form-select" aria-label="Select" id="floatingLabelSelect"]
                H5Option(["selected":"selected"], Select option")
                H5Option(["value":"1"], "Option one")
                H5Option(["value":"2"], "Option two")
                H5Option(["value":"3"], "Option three")
                H5Option(["value":"4"], "Option four")
                H5Option(["value":"5"], "Option five")
              )
              H5Label(["for":"floatingLabelSelect" ["form-label"]Select label")
            )
          )
        )
      )
    )
 */