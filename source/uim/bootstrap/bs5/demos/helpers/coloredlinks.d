module source.uim.bootstrap.bs5.demos.helpers.coloredlinks;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/coloredlinks", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Colored Links - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/helpers">Helpers</a></li>
        <li class="breadcrumb-item active" aria-current="page">Colored Links</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Colored Links</h2>
        <hr>

         <div class="mb-5">
              <div>
                <a href="#" class="link-primary">Primary link</a><br>
                <a href="#" class="link-secondary">Secondary link</a><br>
                <a href="#" class="link-success">Success link</a><br>
                <a href="#" class="link-danger">Danger link</a><br>
                <a href="#" class="link-warning">Warning link</a><br>
                <a href="#" class="link-info">Info link</a><br>
                <a href="#" class="link-light">Light link</a><br>
                <a href="#" class="link-dark">Dark link</a>
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