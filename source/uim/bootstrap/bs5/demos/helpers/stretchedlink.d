module source.uim.bootstrap.bs5.demos.helpers.stretchedlink;

import uim.bootstrap;

static this() {
	demoBS5.pages("helpers/stretchedlink", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Stretched Link - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Stretched Link</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Stretched Link</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Card</h3>
          <div>
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Card title</h4>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <a href="#" class="card-link stretched-link">Stretched link</a>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Custom component</h3>
          <div>
            <div class="d-flex position-relative">
              <img src="../img/200x200.png" alt="" class="me-3">
              <div>
                <h5>Media object</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <a href="#" class="stretched-link">Stretched link</a>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Column</h3>
          <div>
            <div class="row">
              <div class="col">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              </div>
              <div class="col position-relative">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <a href="#" class="stretched-link">Stretched link</a>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Row</h3>
          <div>
            <div class="row position-relative">
              <div class="col">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              </div>
              <div class="col">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <a href="#" class="stretched-link">Stretched link</a>
              </div>
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