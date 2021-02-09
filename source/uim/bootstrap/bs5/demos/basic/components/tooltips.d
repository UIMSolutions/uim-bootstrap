module uim.bootstrap.bs5.demos.components.tooltips;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/tooltips", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Tooltips - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto linkExample = demoBs5Example("link", "Link",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
      H5H3(["text-muted"], "Link"),
      H5Div(
        H5A(["href":"#", "data-bs-toggle":"tooltip", "title":"Tooltip on top"], "Tooltip for link")),
        H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;", 
        "data-bs-toggle":"&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
          H5H3(["text-muted"], "Button"),
          H5Div(
            BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on top"], "Tooltip for button"))))
            ), ``, ``);

auto customExample = demoBs5Example("custom", "Custom HTML",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Custom HTML"),
      H5Div(
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"<strong>Tooltip</strong> <small>with</small> <span class='badge bg-primary'>custom</span> <em>HTML</em>", "data-bs-html":"true"], "Tooltip with custom HTML")))
        ), ``, ``);

auto positionExample = demoBs5Example("position", "Position",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Position"),
      H5Div(
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on top", "data-bs-placement":"top"], "Tooltip on top"),
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on right", "data-bs-placement":"right"], "Tooltip on right"),
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on bottom", "data-bs-placement":"bottom"], "Tooltip on bottom"),
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on left", "data-bs-placement":"left"], "Tooltip on left"))),
        ), ``, ``);

auto animationExample = demoBs5Example("animation", "Animation",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Animation"),
      H5Div(
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip without animation", "data-bs-animation":"false"], "Tooltip without animation")))
        ), ``, ``);

auto hidingExample = demoBs5Example("hiding", "Hiding",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Delay"),
      H5P("Tooltip with delay in ms for showing and hiding"),
      H5Div(
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip with delay", "data-bs-delay":"500"], "Tooltip with delay")))
        ), ``, ``);

auto triggerExample = demoBs5Example("trigger", "Trigger type",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Trigger type"),
      H5P("Tooltip triggered by click only"),
      H5Div(
        BS5Button(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Triggered by click", "data-bs-trigger":"click"], "Trigger by click")))
        ), ``, ``);

auto disabledExample = demoBs5Example("disabled", "Disabled elements",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
      H5H3(["text-muted"], "Disabled elements"),
      H5Div(
        H5Span(["d-inline-block"], ["tabindex":"0", "data-bs-toggle":"tooltip", "title":"Tooltip for disabled element"], 
          BS5Button(["btn-secondary"], ["disabled":"disabled", "style":"pointer-events: none;"], "Tooltip for disabled element"))))
          ), ``, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Components"], "Tooltips")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "tooltips")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Tooltips"),
      H5Hr,

      linkExample, 
      customExample, 
      positionExample, 
      animationExample, 
      hidingExample, 
      triggerExample, 
      disabledExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}