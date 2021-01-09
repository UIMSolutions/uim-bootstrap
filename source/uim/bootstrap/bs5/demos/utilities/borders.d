module source.uim.bootstrap.bs5.demos.utilities.borders;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/borders", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Borders - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/utilities">Utilities</a></li>
        <li class="breadcrumb-item active" aria-current="page">Borders</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Borders</h2>
        <hr>

        <div class="mb-5" data-css='div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'>
          <h3 class="text-muted">Additive</h3>
          <div>
            <div class="border"></div>
            <div class="border-top"></div>
            <div class="border-end"></div>
            <div class="border-bottom"></div>
            <div class="border-start"></div>
            <div class="border-top border-end"></div>
            <div class="border-bottom border-start"></div>
          </div>
        </div>

        <div class="mb-5" data-css='div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}&#10;div[class$="-0"] {&#10;&#9;border: 1px solid #dee2e6;&#10;}'>
          <h3 class="text-muted">Subtractive</h3>
          <div>
            <div class="border-0"></div>
            <div class="border-top-0"></div>
            <div class="border-end-0"></div>
            <div class="border-bottom-0"></div>
            <div class="border-start-0"></div>
            <div class="border-top-0 border-end-0"></div>
            <div class="border-bottom-0 border-start-0"></div>
          </div>
        </div>

        <div class="mb-5" data-css='div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'>
          <h3 class="text-muted">Color</h3>
          <div>
            <div class="border border-primary"></div>
            <div class="border border-secondary"></div>
            <div class="border border-success"></div>
            <div class="border border-danger"></div>
            <div class="border border-warning"></div>
            <div class="border border-info"></div>
            <div class="border border-light"></div>
            <div class="border border-dark"></div>
            <div class="border border-white"></div>
          </div>
        </div>

        <div class="mb-5" data-css='div[class^="border"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'>
          <h3 class="text-muted">Width</h3>
          <div>
            <div class="border border-1"></div>
            <div class="border border-2"></div>
            <div class="border border-3"></div>
            <div class="border border-4"></div>
            <div class="border border-5"></div>
          </div>
        </div>

        <div class="mb-5" data-css='img {&#10;&#9;margin: 1em;&#10;}&#10;div[class^="rounded"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'>
          <h3 class="text-muted">Radius</h3>
          <div>
            <img src="../img/100x100.png" alt="" class="rounded">
            <img src="../img/100x100.png" alt="" class="rounded-top">
            <img src="../img/100x100.png" alt="" class="rounded-end">
            <img src="../img/100x100.png" alt="" class="rounded-bottom">
            <img src="../img/100x100.png" alt="" class="rounded-start">
            <img src="../img/100x100.png" alt="" class="rounded-circle">
            <img src="../img/200x100.png" alt="" class="rounded-pill">
          </div>
        </div>

        <div class="mb-5" data-css='img {&#10;&#9;margin: 1em;&#10;}&#10;div[class^="rounded"] {&#10;&#9;display: inline-block;&#10;&#9;margin: 1em;&#10;&#9;width: 5em;&#10;&#9;height: 5em;&#10;&#9;background-color: #f5f5f5;&#10;}'>
          <h3 class="text-muted">Radius size</h3>
          <div>
            <img src="../img/100x100.png" alt="" class="rounded-0" style="border-radius: 10px;">
            <img src="../img/100x100.png" alt="" class="rounded-1">
            <img src="../img/100x100.png" alt="" class="rounded-2">
            <img src="../img/100x100.png" alt="" class="rounded-3">
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
      `;
    }
  });
}