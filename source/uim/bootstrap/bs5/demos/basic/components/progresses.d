module uim.bootstrap.bs5.demos.components.progresses;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/progresses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Progresses - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

auto noExample = demoBs5Example("no", "Progress with no progress",
  H5Div(
    BS5Progress
    .bar(["aria-valuenow":"0", "aria-valuemin":"0", "aria-valuemax":"100"])
      ), `BS5Progress(
  BS5ProgressBar(["aria-valuenow":"0", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact version ---

BS5Progress
.bar(["aria-valuenow":"0", "aria-valuemin":"0", "aria-valuemax":"100"])
`, `<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="0" role="progressbar"></div>
</div>`);

auto inlineExample = demoBs5Example("inline", "Width using inline styles",
  H5Div(
    BS5Progress
    .bar(["style":"width: 15%", "aria-valuenow":"15", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["style":"width: 33%", "aria-valuenow":"33", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["style":"width: 62%", "aria-valuenow":"62", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["style":"width: 75%", "aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br, 
    BS5Progress
    .bar(["style":"width: 100%", "aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"])
      ), `BS5Progress(
  BS5ProgressBar(["style":"width: 15%", "aria-valuenow":"15", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["style":"width: 33%", "aria-valuenow":"33", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["style":"width: 62%", "aria-valuenow":"62", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["style":"width: 75%", "aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["style":"width: 100%", "aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact version ---

BS5Progress
.bar(["style":"width: 15%", "aria-valuenow":"15", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["style":"width: 33%", "aria-valuenow":"33", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["style":"width: 62%", "aria-valuenow":"62", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["style":"width: 75%", "aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["style":"width: 100%", "aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"])`, 
`<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="15" role="progressbar" style="width: 15%"></div>
</div>
<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="33" role="progressbar" style="width: 33%"></div>
</div>
<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="62" role="progressbar" style="width: 62%"></div>
</div>
<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="75" role="progressbar" style="width: 75%"></div>
</div>
<div class="progress">
  <div class="progress-bar" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar" style="width: 100%"></div>
</div>`);

auto sizingExample = demoBs5Example("sizing", "Width using sizing classes w-25, w-50. w-75, w-100",
  H5Div(
    BS5Progress
    .bar(["w-25"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-75"], ["aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-100"], ["aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"])
      ), `BS5Progress(
  BS5ProgressBar(["w-25"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-75"], ["aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-100"], ["aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact version ---

BS5Progress
.bar(["w-25"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-75"], ["aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-100"], ["aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"])`, 
`<div class="progress">
  <div class="progress-bar w-25" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"></div>
</div>
<div class="progress">
  <div class="progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="progress-bar w-75" aria-valuemax="100" aria-valuemin="0" aria-valuenow="75" role="progressbar"></div>
</div>
<div class="progress">
  <div class="progress-bar w-100" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar"></div>
</div>`);

auto labelExample = demoBs5Example("label", "Progress with a label",
  H5Div(
    BS5Progress
    .bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"], "50%")
      ), `BS5Progress(
  BS5ProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"], "50%"))
  
--- Compact version ---

BS5Progress
    .bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"], "50%")`, 
`<div class="progress">
  <div class="progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar">50%</div>
</div>`);

auto heightExample = demoBs5Example("height", "Height using inline styles",
  H5Div(
    BS5Progress(["style":"height: 0.5rem;"])
    .bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress(["style":"height: 2rem;"])
    .bar(["w-50"], ["aria-valuenow":"50", "aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
      ), `BS5Progress(["style":"height: 0.5rem;"], 
  BS5ProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])) 
BS5Progress(["style":"height: 2rem;"], 
  BS5ProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact version ---

BS5Progress(["style":"height: 0.5rem;"])
.bar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress(["style":"height: 2rem;"])
.bar(["w-50"], ["aria-valuenow":"50", "aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])`, 
`<div class="progress" style="height: 0.5rem;">
  <div class="progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress" style="height: 2rem;">
  <div class="progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>`);

auto backgroundExample = demoBs5Example("background", "Background colors",
  H5Div(
    BS5Progress
    .bar(["w-50", "bg-primary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-secondary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-success"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-danger"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-warning"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-info"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-light", "text-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), H5Br,
    BS5Progress
    .bar(["w-50", "bg-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]), 
      ), `BS5Progress(
  BS5ProgressBar(["w-50", "bg-primary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-secondary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-success"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-danger"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-warning"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-info"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-light", "text-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
BS5Progress(
  BS5ProgressBar(["w-50", "bg-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact Version ---

BS5Progress
.bar(["w-50", "bg-primary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-secondary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-success"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-danger"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-warning"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-info"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-light", "text-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
BS5Progress
.bar(["w-50", "bg-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])`, 
`<div class="progress">
  <div class="bg-primary progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-secondary progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-success progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-danger progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-warning progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-info progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-light progress-bar text-dark w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
<div class="progress">
  <div class="bg-dark progress-bar w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>
`);

auto stripesExample = demoBs5Example("stripes", "Stripes",
  H5Div(
    BS5Progress
    .bar(["progress-bar-striped", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
    ), `BS5Progress(
  BS5ProgressBar(["progress-bar-striped", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
  
--- Compact version ---

BS5Progress
.bar(["progress-bar-striped", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
  `, `<div class="progress">
  <div class="progress-bar progress-bar-animated progress-bar-striped w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>`);

auto animatedExample = demoBs5Example("animated", "Animated Stripes",
  H5Div(
    BS5Progress
    .bar(["progress-bar-striped", "progress-bar-animated", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
    ), `BS5Progress(
  BS5ProgressBar(["progress-bar-striped", "progress-bar-animated", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))

--- Compact version ---

BS5Progress
.bar(["progress-bar-striped", "progress-bar-animated", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])
`, `<div class="progress">
  <div class="progress-bar progress-bar-striped w-50" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar"></div>
</div>`);

auto multipleExample = demoBs5Example("multiple", "Multiple progress bars",
  H5Div(
    BS5Progress
    .bar(["w-25", "bg-info"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
    .bar(["w-25", "bg-warning"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
    .bar(["w-25", "bg-danger"],  ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
      ), `BS5Progress(
  BS5ProgressBar(["w-25", "bg-info"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]),
  BS5ProgressBar(["w-25", "bg-warning"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]),
  BS5ProgressBar(["w-25", "bg-danger"],  ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]))

--- Compact version ---

BS5Progress
.bar(["w-25", "bg-info"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
.bar(["w-25", "bg-warning"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
.bar(["w-25", "bg-danger"],  ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])
`, `<div class="progress">
  <div class="bg-info progress-bar w-25" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"></div>
  <div class="bg-warning progress-bar w-25" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"></div>
  <div class="bg-danger progress-bar w-25" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"></div>
</div>`);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Progresses")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "progresses")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Progresses"),
      H5Hr,

      noExample,
      inlineExample,
      sizingExample,
      labelExample,
      heightExample,
      backgroundExample,
      stripesExample,
      animatedExample,
      multipleExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}