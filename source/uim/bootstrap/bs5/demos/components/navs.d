module uim.bootstrap.bs5.demos.components.navs;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/navs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navs - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Navs</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Navs</h2>
            <hr>

           <div class="mb-5">
              <h3 class="text-muted">Unordered list</h3>
              <div>
                <ul class="nav">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Links</h3>
              <div>
                <nav class="nav">
                  <a href="#" class="nav-link active" aria-current="page">Active</a>
                  <a href="#" class="nav-link">Link</a>
                  <a href="#" class="nav-link">Link</a>
                  <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Navs as navigation bar</h3>
              <div>
                <nav>
                  <ul class="nav">
                    <li class="nav-item">
                      <a href="#" class="nav-link active" aria-current="page">Active</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">Link</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">Link</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                  </ul>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Horizontal alignment</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Centered</h4>
                <ul class="nav justify-content-center">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
                <h4 class="h5 text-muted mt-3">Right-aligned</h4>
                <ul class="nav justify-content-end">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Vertical</h3>
              <div>
                <ul class="nav flex-column">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Tabs</h3>
              <div>
                <ul class="nav nav-tabs">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Pills</h3>
              <div>
                <ul class="nav nav-pills">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Fill</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Unordered list</h4>
                <ul class="nav nav-tabs nav-fill">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
                <h4 class="h5 text-muted mt-3">Links</h4>
                <nav class="nav nav-tabs nav-fill">
                  <a href="#" class="nav-item nav-link active" aria-current="page">Active</a>
                  <a href="#" class="nav-item nav-link">Link</a>
                  <a href="#" class="nav-item nav-link">Link</a>
                  <a href="#" class="nav-item nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Justify</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Unordered list</h4>
                <ul class="nav nav-pills nav-justified">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
                <h4 class="h5 text-muted mt-3">Links</h4>
                <nav class="nav nav-pills nav-justified">
                  <a href="#" class="nav-item nav-link active" aria-current="page">Active</a>
                  <a href="#" class="nav-item nav-link">Link</a>
                  <a href="#" class="nav-item nav-link">Link</a>
                  <a href="#" class="nav-item nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Responsive</h3>
              <div>
                <ul class="nav flex-column flex-md-row">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Dropdown</h3>
              <div>
                <ul class="nav">
                  <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Active</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu">
                      <a href="#" class="dropdown-item">First item</a>
                      <a href="#" class="dropdown-item">Second item</a>
                      <a href="#" class="dropdown-item">Third item</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">Link</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Tab panel from list</h3>
              <div>
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <a href="#tabList-pane-1" id="tabList-1" class="nav-link active" data-bs-toggle="tab" role="tab" aria-controls="tabList-pane-1" aria-selected="true">Panel 1</a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="#tabList-pane-2" id="tabList-2" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabList-pane-2" aria-selected="false">Panel 2</a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="#tabList-pane-3" id="tabList-3" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabList-pane-3" aria-selected="false">Panel 3</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div id="tabList-pane-1" class="tab-pane active" role="tabpanel" aria-labelledby="tabList-1">
                    <p>Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabList-pane-2" class="tab-pane" role="tabpanel" aria-labelledby="tabList-2">
                    <p>Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabList-pane-3" class="tab-pane" role="tabpanel" aria-labelledby="tabList-3">
                    <p>Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Tab panel from links</h3>
              <div>
                <nav>
                  <div class="nav nav-tabs" role="tablist">
                    <a href="#tabLinks-pane-1" id="tabLinks-1" class="nav-item nav-link active" data-bs-toggle="tab" role="tab" aria-controls="tabLinks-pane-1" aria-selected="true">Panel 1</a>
                    <a href="#tabLinks-pane-2" id="tabLinks-2" class="nav-item nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabLinks-pane-2" aria-selected="false">Panel 2</a>
                    <a href="#tabLinks-pane-3" id="tabLinks-3" class="nav-item nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabLinks-pane-3" aria-selected="false">Panel 3</a>
                  </div>
                </nav>
                <div class="tab-content">
                  <div id="tabLinks-pane-1" class="tab-pane active" role="tabpanel" aria-labelledby="tabLinks-1">
                    <p>Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabLinks-pane-2" class="tab-pane" role="tabpanel" aria-labelledby="tabLinks-2">
                    <p>Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabLinks-pane-3" class="tab-pane" role="tabpanel" aria-labelledby="tabLinks-3">
                    <p>Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Vertical tab panel</h3>
              <div>
                <div class="row">
                  <div class="col-3">
                    <ul class="nav flex-column nav-pills" role="tablist">
                      <li class="nav-item" role="presentation">
                        <a href="#tabVertical-pane-1" id="tabVertical-1" class="nav-link active" data-bs-toggle="tab" role="tab" aria-controls="tabVertical-pane-1" aria-selected="true">Panel 1</a>
                      </li>
                      <li class="nav-item" role="presentation">
                        <a href="#tabVertical-pane-2" id="tabVertical-2" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabVertical-pane-2" aria-selected="false">Panel 2</a>
                      </li>
                      <li class="nav-item" role="presentation">
                        <a href="#tabVertical-pane-3" id="tabVertical-3" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabVertical-pane-3" aria-selected="false">Panel 3</a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-9">
                    <div class="tab-content">
                      <div id="tabVertical-pane-1" class="tab-pane active" role="tabpanel" aria-labelledby="tabVertical-1">
                        <p>Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                      <div id="tabVertical-pane-2" class="tab-pane" role="tabpanel" aria-labelledby="tabVertical-2">
                        <p>Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                      <div id="tabVertical-pane-3" class="tab-pane" role="tabpanel" aria-labelledby="tabVertical-3">
                        <p>Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Tab panel with fade effect</h3>
              <div>
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <a href="#tabFade-pane-1" id="tabFade-1" class="nav-link active" data-bs-toggle="tab" role="tab" aria-controls="tabFade-pane-1" aria-selected="true">Panel 1</a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="#tabFade-pane-2" id="tabFade-2" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabFade-pane-2" aria-selected="false">Panel 2</a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="#tabFade-pane-3" id="tabFade-3" class="nav-link" data-bs-toggle="tab" role="tab" aria-controls="tabFade-pane-3" aria-selected="false">Panel 3</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div id="tabFade-pane-1" class="tab-pane fade show active" role="tabpanel" aria-labelledby="tabFade-1">
                    <p>Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabFade-pane-2" class="tab-pane fade" role="tabpanel" aria-labelledby="tabFade-2">
                    <p>Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                  </div>
                  <div id="tabFade-pane-3" class="tab-pane fade" role="tabpanel" aria-labelledby="tabFade-3">
                    <p>Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
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