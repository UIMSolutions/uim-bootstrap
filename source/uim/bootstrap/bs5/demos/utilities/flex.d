module source.uim.bootstrap.bs5.demos.utilities.flex;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/flex", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Flex - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Flex")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Flex"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/*
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/utilities">Utilities</a></li>
        <li class="breadcrumb-item active" aria-current="page">Flex</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Flex</h2>
        <hr>

  <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Container</h3>
              <div>
                <div class="d-flex">Flexbox container</div>
                <div class="d-inline-flex">Inline flexbox container</div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Direction</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Row</h4>
                <div class="d-flex flex-row">
                  <div>Flex direction row</div>
                  <div>Flex direction row</div>
                  <div>Flex direction row</div>
                </div>
                <h4 class="h5 text-muted mt-3">Row-reverse</h4>
                <div class="d-flex flex-row-reverse">
                  <div>Flex direction row-reverse</div>
                  <div>Flex direction row-reverse</div>
                  <div>Flex direction row-reverse</div>
                </div>
                <h4 class="h5 text-muted mt-3">Column</h4>
                <div class="d-flex flex-column">
                  <div>Flex direction column</div>
                  <div>Flex direction column</div>
                  <div>Flex direction column</div>
                </div>
                <h4 class="h5 text-muted mt-3">Column-reverse</h4>
                <div class="d-flex flex-column-reverse">
                  <div>Flex direction column-reverse</div>
                  <div>Flex direction column-reverse</div>
                  <div>Flex direction column-reverse</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Justify content</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Start</h4>
                <div class="d-flex justify-content-start">
                  <div>Justify content start</div>
                  <div>Justify content start</div>
                  <div>Justify content start</div>
                </div>
                <h4 class="h5 text-muted mt-3">Center</h4>
                <div class="d-flex justify-content-center">
                  <div>Justify content center</div>
                  <div>Justify content center</div>
                  <div>Justify content center</div>
                </div>
                <h4 class="h5 text-muted mt-3">End</h4>
                <div class="d-flex justify-content-end">
                  <div>Justify content end</div>
                  <div>Justify content end</div>
                  <div>Justify content end</div>
                </div>
                <h4 class="h5 text-muted mt-3">Between</h4>
                <div class="d-flex justify-content-between">
                  <div>Justify content between</div>
                  <div>Justify content between</div>
                  <div>Justify content between</div>
                </div>
                <h4 class="h5 text-muted mt-3">Around</h4>
                <div class="d-flex justify-content-around">
                  <div>Justify content around</div>
                  <div>Justify content around</div>
                  <div>Justify content around</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Align items</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Start</h4>
                <div class="d-flex align-items-start">
                  <div>Align items start</div>
                  <div>Align items start</div>
                  <div>Align items start</div>
                </div>
                <h4 class="h5 text-muted mt-3">Center</h4>
                <div class="d-flex align-items-center">
                  <div>Align items center</div>
                  <div>Align items center</div>
                  <div>Align items center</div>
                </div>
                <h4 class="h5 text-muted mt-3">End</h4>
                <div class="d-flex align-items-end">
                  <div>Align items end</div>
                  <div>Align items end</div>
                  <div>Align items end</div>
                </div>
                <h4 class="h5 text-muted mt-3">Baseline</h4>
                <div class="d-flex align-items-baseline">
                  <div>Align items baseline</div>
                  <div>Align items baseline</div>
                  <div>Align items baseline</div>
                </div>
                <h4 class="h5 text-muted mt-3">Stretch</h4>
                <div class="d-flex align-items-stretch">
                  <div>Align items stretch</div>
                  <div>Align items stretch</div>
                  <div>Align items stretch</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Align self</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Start</h4>
                <div class="d-flex" data-example="alignSelf">
                  <div class="align-self-start">Align self start</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <h4 class="h5 text-muted mt-3">Center</h4>
                <div class="d-flex" data-example="alignSelf">
                  <div class="align-self-center">Align self center</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <h4 class="h5 text-muted mt-3">End</h4>
                <div class="d-flex" data-example="alignSelf">
                  <div class="align-self-end">Align self end</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <h4 class="h5 text-muted mt-3">Baseline</h4>
                <div class="d-flex" data-example="alignSelf">
                  <div class="align-self-baseline">Align self baseline</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <h4 class="h5 text-muted mt-3">Stretch</h4>
                <div class="d-flex" data-example="alignSelf">
                  <div class="align-self-stretch">Align self stretch</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Auto margins</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Horizontal</h4>
                <div class="d-flex justify-content-start">
                  <div>Flex item</div>
                  <div>Flex item</div>
                  <div class="ms-auto">Margin left auto</div>
                </div>
                <div class="d-flex justify-content-end">
                  <div class="me-auto">Margin right auto</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <h4 class="h5 text-muted mt-3">Vertical</h4>
                <div class="d-flex flex-column align-items-start">
                  <div class="mb-auto">Margin bottom auto</div>
                  <div>Flex item</div>
                  <div>Flex item</div>
                </div>
                <div class="d-flex flex-column align-items-end">
                  <div>Flex item</div>
                  <div>Flex item</div>
                  <div class="mt-auto">Margin top auto</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Fill</h3>
              <div>
                <div class="d-flex">
                  <div class="flex-fill">Flex fill</div>
                  <div class="flex-fill">Flex fill</div>
                  <div class="flex-fill">Flex fill</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Grow</h3>
              <div>
                <div class="d-flex">
                  <div>Flex grow</div>
                  <div>Flex grow</div>
                  <div class="flex-grow-1">Flex grow</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Shrink</h3>
              <div>
                <div class="d-flex">
                  <div class="w-50">Flex shrink</div>
                  <div class="w-50">Flex shrink</div>
                  <div class="flex-shrink-1">Flex shrink</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Wrap</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Nowrap</h4>
                <div class="d-flex flex-nowrap">
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                  <div>Flex-wrap nowrap</div>
                </div>
                <h4 class="h5 text-muted mt-3">Wrap</h4>
                <div class="d-flex flex-wrap">
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                  <div>Flex-wrap wrap</div>
                </div>
                <h4 class="h5 text-muted mt-3">Wrap-reverse</h4>
                <div class="d-flex flex-wrap-reverse">
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                  <div>Flex-wrap reverse</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Order</h3>
              <p>order-first (-1), order-0 to order-5 and order-last (6)</p>
              <div>
                <div class="d-flex">
                  <div class="order-last">First, but last</div>
                  <div class="order-3">Second, but number 5</div>
                  <div class="order-2">Third, but number 4</div>
                  <div class="order-1">Fourth, but number 3</div>
                  <div class="order-first">Fifth, but first</div>
                  <div>Last, but unordered, so number 2</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Align content</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Start</h4>
                <div class="d-flex align-content-start flex-wrap">
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                  <div>Align content start</div>
                </div>
                <h4 class="h5 text-muted mt-3">Center</h4>
                <div class="d-flex align-content-center flex-wrap">
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                  <div>Align content center</div>
                </div>
                <h4 class="h5 text-muted mt-3">End</h4>
                <div class="d-flex align-content-end flex-wrap">
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                  <div>Align content end</div>
                </div>
                <h4 class="h5 text-muted mt-3">Between</h4>
                <div class="d-flex align-content-between flex-wrap">
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                  <div>Align content between</div>
                </div>
                <h4 class="h5 text-muted mt-3">Around</h4>
                <div class="d-flex align-content-around flex-wrap">
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                  <div>Align content around</div>
                </div>
                <h4 class="h5 text-muted mt-3">Stretch</h4>
                <div class="d-flex align-content-stretch flex-wrap">
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                  <div>Align content stretch</div>
                </div>
              </div>
            </div>

            <div class="mb-5" data-css='.d-flex,&#10;.d-inline-flex {&#10;&#9;background-color: #f8f9fa;&#10;}&#10;.d-flex div {&#10;&#9;border: 1px solid white;&#10;&#9;background-color: #6c757d;&#10;&#9;color: white;&#10;&#9;padding: 0.5rem;&#10;}&#10;[class*=align-items-],&#10;[data-example="alignSelf"],&#10;[class*=align-content-] {&#10;&#9;height: 200px;&#10;}&#10;.responsive-examples {&#10;&#9;display: none;&#10;}'>
              <h3 class="text-muted">Responsive examples</h3>
              <p>Responsive utility classes exist for all the flexbox utilities: display, flex-direction, justify-content, align-items, align-self, flex-wrap, order and align-content. The examples are hidden on the screen, but can be viewed in the source code or by clicking "Toggle code" below.</p>
              <div>
                <div class="responsive-examples">
                  <div class="d-sm-flex">Display flex for small devices and up</div>
                  <div class="d-md-inline-flex">Display inline-flex for medium devices and up</div>
                  <div class="d-flex flex-lg-row">Display flex for all devices and set flex direction to row for large devices and up</div>
                  <div class="d-flex flex-xl-row-reverse">Display flex for all devices and set flex direction to row-reverse for extra large devices and up</div>
                  <div class="d-flex flex-xxl-column">Display flex for all devices and set flex direction to column for extra extra large devices and up</div>
                  <div class="d-flex flex-sm-column-reverse">Display flex for all devices and set flex direction to column-reverse for small devices and up</div>
                  <div class="d-flex justify-content-md-start">Display flex for all devices and justify content to the start for medium devices and up</div>
                  <div class="d-flex justify-content-lg-center">Display flex for all devices and justify content to the center for large devices and up</div>
                  <div class="d-flex justify-content-xl-end">Display flex for all devices and justify content to the end for extra large devices and up</div>
                  <div class="d-flex justify-content-xxl-between">Display flex for all devices and justify content between for extra extra large devices and up</div>
                  <div class="d-flex justify-content-sm-around">Display flex for all devices and justify content around for small devices and up</div>
                  <div class="d-flex align-items-md-start">Display flex for all devices and align items to the start for medium devices and up</div>
                  <div class="d-flex align-items-lg-center">Display flex for all devices and align items to the center for large devices and up</div>
                  <div class="d-flex align-items-xl-end">Display flex for all devices and align items to the end for extra large devices and up</div>
                  <div class="d-flex align-items-xxl-baseline">Display flex for all devices and align items to the baseline for extra extra large devices and up</div>
                  <div class="d-flex align-items-sm-stretch">Display flex for all devices and align items to stretch for small devices and up</div>
                  <div class="d-flex">
                    <div class="align-self-md-start">Align self to the start for medium devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="align-self-lg-center">Align self to the center for large devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="align-self-xl-end">Align self to the end for extra large devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="align-self-xxl-baseline">Align self to the baseline for extra extra large devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="align-self-sm-stretch">Align self to stretch for small devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="flex-md-fill">Fill item for medium devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="flex-lg-grow-1">Grow item for large devices and up</div>
                  </div>
                  <div class="d-flex">
                    <div class="flex-xl-shrink-1">Shrink item for extra large devices and up</div>
                  </div>
                  <div class="d-flex flex-xxl-nowrap">Display flex for all devices and make items not wrap for extra extra large devices and up</div>
                  <div class="d-flex flex-sm-wrap">Display flex for all devices and make items wrap for small devices and up</div>
                  <div class="d-flex flex-md-wrap-reverse">Display flex for all devices and make items wrap in reverse for medium devices and up</div>
                  <div class="d-flex">
                    <div class="order-lg-3">Set the order to 3 for large devices and up</div>
                    <div class="order-xl-2">Set the order to 2 for extra large devices and up</div>
                    <div class="order-xxl-1">Set the order to 1 for extra extra large devices and up</div>
                  </div>
                  <div class="d-flex align-content-sm-start">Display flex for all devices and align content to the start for small devices and up</div>
                  <div class="d-flex align-content-md-center">Display flex for all devices and align content to the center for medium devices and up</div>
                  <div class="d-flex align-content-lg-end">Display flex for all devices and align content to the end for large devices and up</div>
                  <div class="d-flex align-content-xl-around">Display flex for all devices and align content around for extra large devices and up</div>
                  <div class="d-flex align-content-xxl-stretch">Display flex for all devices and align content to stretch for extra extra large devices and up</div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>

      `;
    }
  });
} */