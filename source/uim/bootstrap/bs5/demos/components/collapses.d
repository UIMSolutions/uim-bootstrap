module uim.bootstrap.bs5.demos.components.collapses;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/collapses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Collapses - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">Collapses</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Collapses</h2>
        <hr>

        <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Link</h3>
              <p>Show and hide other content with link using the "href" attribute</p>
              <div class="code-live">
                <a href="#hrefCollapse" class="btn btn-primary" data-bs-toggle="collapse" aria-expanded="false" aria-controls="hrefCollapse">Link with href</a>
                <div class="collapse" id="hrefCollapse">
                  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Button</h3>
              <p>Show and hide other content with button using the "data-bs-target" attribute</p>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#dataTargetCollapse" aria-expanded="false" aria-controls="dataTargetCollapse">Button with data-bs-target</button>
                <div class="collapse" id="dataTargetCollapse">
                  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Multiple targets</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-bs-toggle="collapse" data-bs-target=".multiple-collapse" aria-expanded="false" aria-controls="multipleCollapse1 multipleCollapse2">Button with data-bs-target</button>
                <div class="collapse multiple-collapse" id="multipleCollapse1">
                  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
                </div>
                <div class="collapse multiple-collapse" id="multipleCollapse2">
                  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
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
}