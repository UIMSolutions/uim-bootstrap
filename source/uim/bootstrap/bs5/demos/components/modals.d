module uim.bootstrap.bs5.demos.components.modals;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/modals", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Modals - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">Modals</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Modals</h2>
        <hr>

        <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Static</h3>
              <div class="code-live">
                <div class="modal fade show" id="modalStatic" tabindex="-1" role="dialog" aria-labelledby="modalStaticTitle" aria-modal="true" style="display: block; position: relative; z-index: 1;">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalStaticTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Header only</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalHeader">Open modal</button>
                <div class="modal fade" id="modalHeader" tabindex="-1" role="dialog" aria-labelledby="modalHeaderTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalHeaderTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Header and footer</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalHeaderFooter">Open modal</button>
                <div class="modal fade" id="modalHeaderFooter" tabindex="-1" role="dialog" aria-labelledby="modalHeaderFooterTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalHeaderFooterTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Long scrollable content</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalLong">Open modal</button>
                <div class="modal fade" id="modalLong" tabindex="-1" role="dialog" aria-labelledby="modalLongTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalLongTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                        <p>Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim.</p>
                        <p>Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris.</p>
                        <p>Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante.</p>
                        <p>Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Scrollable body</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalScrollableBody">Open modal</button>
                <div class="modal fade" id="modalScrollableBody" tabindex="-1" role="dialog" aria-labelledby="modalScrollableBodyTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalScrollableBodyTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.</p>
                        <p>Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim.</p>
                        <p>Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris.</p>
                        <p>Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante.</p>
                        <p>Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Vertically centered</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalVertical">Open modal</button>
                <div class="modal fade" id="modalVertical" tabindex="-1" role="dialog" aria-labelledby="modalVerticalTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalVerticalTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Sizing</h3>
              <div class="code-live">
                <h4 class="h5 text-muted mt-3">Small</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalSmall">Open modal</button>
                <div class="modal fade" id="modalSmall" tabindex="-1" role="dialog" aria-labelledby="modalSmallTitle" aria-hidden="true">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalSmallTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Medium</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalMedium">Open modal</button>
                <div class="modal fade" id="modalMedium" tabindex="-1" role="dialog" aria-labelledby="modalMediumTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalMediumTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Large</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalLarge">Open modal</button>
                <div class="modal fade" id="modalLarge" tabindex="-1" role="dialog" aria-labelledby="modalLargeTitle" aria-hidden="true">
                  <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalLargeTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Extra large</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalExtraLarge">Open modal</button>
                <div class="modal fade" id="modalExtraLarge" tabindex="-1" role="dialog" aria-labelledby="modalExtraLargeTitle" aria-hidden="true">
                  <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalExtraLargeTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Fullscreen</h3>
              <div class="code-live">
                <h4 class="h5 text-muted mt-3">Always</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenAlways">Open modal</button>
                <div class="modal fade" id="modalFullscreenAlways" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenAlwaysTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenAlwaysTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Below small</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenSm">Open modal</button>
                <div class="modal fade" id="modalFullscreenSm" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenSmTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen-sm-down" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenSmTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Below medium</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenMd">Open modal</button>
                <div class="modal fade" id="modalFullscreenMd" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenMdTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen-md-down" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenMdTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Below large</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenLg">Open modal</button>
                <div class="modal fade" id="modalFullscreenLg" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenLgTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen-lg-down" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenLgTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Below extra large</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenXl">Open modal</button>
                <div class="modal fade" id="modalFullscreenXl" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenXlTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen-xl-down" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenXlTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <h4 class="h5 text-muted mt-3">Below extra extra large</h4>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalFullscreenXxl">Open modal</button>
                <div class="modal fade" id="modalFullscreenXxl" tabindex="-1" role="dialog" aria-labelledby="modalFullscreenXxlTitle" aria-hidden="true">
                  <div class="modal-dialog modal-fullscreen-xxl-down" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalFullscreenXxlTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">No animation</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalNoAnimation">Open modal</button>
                <div class="modal" id="modalNoAnimation" tabindex="-1" role="dialog" aria-labelledby="modalNoAnimationTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalNoAnimationTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Static backdrop</h3>
              <div class="code-live">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-bs-target="#modalStaticBackdrop" data-backdrop="static" data-keyboard="false">Open modal</button>
                <div class="modal fade" id="modalStaticBackdrop" tabindex="-1" role="dialog" aria-labelledby="modalStaticBackdropTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="modalStaticBackdropTitle">Modal title</h5>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Action</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
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