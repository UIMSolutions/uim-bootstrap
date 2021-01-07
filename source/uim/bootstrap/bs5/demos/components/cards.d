module uim.bootstrap.bs5.demos.components.cards;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/cards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Cards - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Cards</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Cards</h2>
            <hr>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Parts</h3>
              <div class="code-live">
                <h4 class="h5 text-muted mt-3">Text</h4>
                <div class="card w-50">
                  <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Title</h4>
                <div class="card w-50">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Subtitle</h4>
                <div class="card w-50">
                  <div class="card-body">
                    <h6 class="card-subtitle">Card subtitle</h6>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Button</h4>
                <div class="card w-50">
                  <div class="card-body">
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Links</h4>
                <div class="card-body">
                  <a href="#" class="card-link">Card link</a>
                  <a href="#" class="card-link">Card link</a>
                  <a href="#" class="card-link">Card link</a>
                </div>
                <h4 class="h5 text-muted mt-3">List group</h4>
                <div class="card w-50">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">List group item</li>
                    <li class="list-group-item">List group item</li>
                    <li class="list-group-item">List group item</li>
                  </ul>
                </div>
                <h4 class="h5 text-muted mt-3">Header</h4>
                <div class="card w-50">
                  <h3 class="card-header">Card header</h3>
                </div>
                <h4 class="h5 text-muted mt-3">Footer</h4>
                <div class="card w-50">
                  <div class="card-footer">Created DD-MM-YYYY</div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Images</h3>
              <div class="code-live">
                <h4 class="h5 text-muted mt-3">Top</h4>
                <div class="card w-50">
                  <img src="../img/400x200.png" alt="Card image in the top" class="card-img-top">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Bottom</h4>
                <div class="card w-50">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                  <img src="../img/400x200.png" alt="Card image in the bottom" class="card-img-bottom">
                </div>
                <h4 class="h5 text-muted mt-3">Overlay</h4>
                <div class="card w-50">
                  <img src="../img/400x200.png" alt="Card image as an overlay" class="card-img">
                  <div class="card-img-overlay">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Tab navigation</h3>
              <div class="code-live">
                <div class="card w-50">
                  <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                      <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                      </li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Pill navigation</h3>
              <div class="code-live">
                <div class="card w-50">
                  <div class="card-header">
                    <ul class="nav nav-pills card-header-pills">
                      <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                      </li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Everything</h3>
              <div class="code-live">
                <div class="card w-50">
                  <div class="card-header">
                    <ul class="nav nav-pills card-header-pills">
                      <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                      </li>
                    </ul>
                  </div>
                  <img src="../img/400x200.png" alt="Card image" class="card-img">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <h6 class="card-subtitle">Card subtitle</h6>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Card link</a>
                  </div>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">List group item</li>
                    <li class="list-group-item">List group item</li>
                    <li class="list-group-item">List group item</li>
                  </ul>
                  <div class="card-footer">Created DD-MM-YYYY</div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Background color</h3>
              <div class="code-live">
                <div class="card text-white bg-primary w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-secondary w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-success w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-danger w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-warning w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-info w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card bg-light w-50 mb-4">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card text-white bg-dark w-50">
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Border and text color</h3>
              <div class="code-live">
                <div class="card border-primary w-50 mb-4">
                  <div class="card-body text-primary">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-primary">Button</a>
                  </div>
                </div>
                <div class="card border-secondary w-50 mb-4">
                  <div class="card-body text-secondary">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-secondary">Button</a>
                  </div>
                </div>
                <div class="card border-success w-50 mb-4">
                  <div class="card-body text-success">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-success">Button</a>
                  </div>
                </div>
                <div class="card border-danger w-50 mb-4">
                  <div class="card-body text-danger">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-danger">Button</a>
                  </div>
                </div>
                <div class="card border-warning w-50 mb-4">
                  <div class="card-body text-warning">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-warning">Button</a>
                  </div>
                </div>
                <div class="card border-info w-50 mb-4">
                  <div class="card-body text-info">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-info">Button</a>
                  </div>
                </div>
                <div class="card border-light w-50 mb-4">
                  <div class="card-body bg-dark text-light">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-light">Button</a>
                  </div>
                </div>
                <div class="card border-dark w-50">
                  <div class="card-body text-dark">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-dark">Button</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Header and footer color</h3>
              <div class="code-live">
                <div class="card border-info w-50">
                  <h3 class="card-header border-info bg-transparent">Card header</h3>
                  <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <a href="#" class="btn btn-info">Button</a>
                  </div>
                  <div class="card-footer border-info bg-transparent">Created DD-MM-YYYY</div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Card groups</h3>
              <div class="code-live">
                <div class="card-group mb-4">
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat.</p>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.</p>
                    </div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</p>
                    </div>
                  </div>
                </div>
                <div class="card-group">
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat.</p>
                    </div>
                    <div class="card-footer">Created DD-MM-YYYY</div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.</p>
                    </div>
                    <div class="card-footer">Created DD-MM-YYYY</div>
                  </div>
                  <div class="card">
                    <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                    <div class="card-body">
                      <h4 class="card-title">Card title</h4>
                      <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</p>
                    </div>
                    <div class="card-footer">Created DD-MM-YYYY</div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Grid cards</h3>
              <div class="code-live">
                <h4 class="h5 text-muted mt-3">Default</h4>
                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4">
                  <div class="col">
                    <div class="card">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">With equal height</h4>
                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4">
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">With footer</h4>
                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4">
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                      <div class="card-footer">Created DD-MM-YYYY</div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.</p>
                      </div>
                      <div class="card-footer">Created DD-MM-YYYY</div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.</p>
                      </div>
                      <div class="card-footer">Created DD-MM-YYYY</div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card h-100">
                      <img class="card-img-top" src="../img/300x150.png" alt="Card image">
                      <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                      </div>
                      <div class="card-footer">Created DD-MM-YYYY</div>
                    </div>
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