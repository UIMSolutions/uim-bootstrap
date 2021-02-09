module uim.bootstrap.bs5.demos.components.modals;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/components/modals", new class DH5AppPage {
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

auto staticExample = demoBs5Example("static", "Static",  
  H5Div(
    BS5Modal("modalStatic", ["fade show"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticTitle", "aria-modal":"true", "style":"display: block; position: relative; z-index: 1;"], 
      BS5ModalDialog(["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle(["id":"modalStaticTitle"], "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"]))),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))
  ), 
  `BS5Modal("modalStatic", ["fade show"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticTitle", "aria-modal":"true", "style":"display: block; position: relative; z-index: 1;"], 
    BS5ModalDialog(["role":"document"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle(["id":"modalStaticTitle"], "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"]))),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))`, 
          `H5Div(["modal fade show" id="modalStatic" tabindex="-1" role="dialog" aria-labelledby="modalStaticTitle" aria-modal="true" "style":"display: block; position: relative; z-index: 1;"]
  H5Div(["modal-dialog" role="document"]
    H5Div(["modal-content"]
      H5Div(["modal-header"]
        <h5 ["modal-title" id="modalStaticTitle"]Modal title</h5>
        H5Button(["type":"button" ["btn-close" data-dismiss="modal" "aria-label":"Close"]")
      )
      H5Div(["modal-body"]
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      )
      H5Div(["modal-footer"]
        H5Button(["type":"button" ["btn btn-primary"]Action")
        H5Button(["type":"button" ["btn btn-secondary" data-dismiss="modal"]Close")
      )
    )
  )
)`);

auto headerExample = demoBs5Example("header", "Header only",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeader"], "Open modal"),
    BS5Modal("modalHeader", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderTitle", "aria-hidden":"true"], 
      BS5ModalDialog(
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle(["id":"modalHeaderTitle"], "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")))))
  ), 
`BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeader"], "Open modal"),
  BS5Modal("modalHeader", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderTitle", "aria-hidden":"true"], 
    BS5ModalDialog(
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle(["id":"modalHeaderTitle"], "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")))))`, ``);

auto footerExample = demoBs5Example("headerfooter", "Header and footer",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeaderFooter"], "Open modal"),
    BS5Modal("modalHeaderFooter", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderFooterTitle", "aria-hidden":"true"],
      BS5ModalDialog( 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalHeaderFooterTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalHeaderFooter"], "Open modal"),
  BS5Modal("modalHeaderFooter", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalHeaderFooterTitle", "aria-hidden":"true"],
    BS5ModalDialog( 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalHeaderFooterTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, ``);

auto longExample = demoBs5Example("scrollablecontent", "Long scrollable content",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLong"], "Open modal"),
    BS5Modal("modalLong", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLongTitle", "aria-hidden":"true"], 
      BS5ModalDialog(
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalLongTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
            H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. 
            Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
            H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. 
            In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
            H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. 
            Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
            H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. 
            Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),          
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLong"], "Open modal"),
  BS5Modal("modalLong", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLongTitle", "aria-hidden":"true"], 
    BS5ModalDialog(
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalLongTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
          H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. 
          Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
          H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. 
          In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
          H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. 
          Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
          H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. 
          Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),          
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
          ``);

auto scrollableExample = demoBs5Example("scrollablebody", "Scrollable body",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalScrollableBody"], "Open modal"),
    BS5Modal("modalScrollableBody", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalScrollableBodyTitle", "aria-hidden":"true"], 
      BS5ModalDialog("modal-dialog-scrollable", 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalScrollableBodyTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
            H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
            H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
            H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
            H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalScrollableBody"], "Open modal"),
  BS5Modal("modalScrollableBody", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalScrollableBodyTitle", "aria-hidden":"true"], 
    BS5ModalDialog("modal-dialog-scrollable", 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalScrollableBodyTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum."),
          H5P("Pellentesque vitae convallis magna. Morbi non elementum mi. Suspendisse at mollis arcu, eu tempus tellus. Aenean fringilla eleifend nisl. Aliquam erat volutpat. Sed a tortor quis tortor convallis mattis. Nunc congue massa vitae lectus dictum, a mattis metus dignissim."),
          H5P("Nulla feugiat, lorem sit amet vehicula hendrerit, velit eros pellentesque est, at dictum elit risus id diam. In ante lorem, blandit vel dui in, sagittis laoreet erat. Proin dictum sit amet urna ut placerat. Pellentesque laoreet, dolor vitae facilisis feugiat, quam quam gravida elit, nec sagittis orci metus at leo. In scelerisque felis vel neque lobortis ullamcorper. Praesent quis sagittis neque, nec eleifend neque. Suspendisse at consectetur eros. Mauris lectus libero, molestie vel dapibus sit amet, luctus gravida ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero neque, pretium quis malesuada eget, congue ac mauris."),
          H5P("Aenean quis tristique libero. Vestibulum sagittis, sapien gravida lobortis posuere, diam arcu auctor libero, at tempor mauris nulla vel odio. Phasellus semper eros rutrum mi scelerisque interdum. Maecenas euismod est sit amet justo vestibulum bibendum. Etiam scelerisque sodales nisi nec efficitur. Pellentesque arcu mauris, accumsan eget mollis at, ultrices id ante. Duis in mi eget nisi euismod gravida. Cras pharetra sollicitudin elit, vel eleifend felis dignissim non. Integer leo ex, feugiat eu lorem egestas, mollis suscipit nulla. Duis quis tellus nulla. Maecenas risus ipsum, fringilla at orci sit amet, mattis fringilla orci. Vivamus odio tellus, ornare eu leo id, pellentesque sodales ante."),
          H5P("Sed laoreet ut ligula eget fringilla. Suspendisse dapibus dui at ex dictum hendrerit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi efficitur ac purus eget dignissim. Aliquam ultrices, orci finibus sollicitudin tempus, elit metus scelerisque magna, a rhoncus justo nisl vitae lectus. Nam mollis sed est ut ullamcorper. Curabitur consequat feugiat erat quis molestie. Fusce suscipit sem et nulla dignissim, id malesuada felis laoreet. Cras leo ligula, vulputate id mi ac, gravida porta sem. Mauris ullamcorper lectus ac eleifend elementum. Ut id velit consequat, facilisis leo vitae, volutpat nisi. Nunc hendrerit libero mi. Integer scelerisque mattis neque placerat condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla eu odio mi. Duis interdum vulputate turpis pretium congue.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto verticallyExample = demoBs5Example("vertically", "Vertically centered",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalVertical"], "Open modal"),
    BS5Modal("modalVertical", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalVerticalTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-dialog-centered"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalVerticalTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalVertical"], "Open modal"),
  BS5Modal("modalVertical", ["fade"], ["tabindex":"-1", "aria-labelledby":"modalVerticalTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-dialog-centered"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalVerticalTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto sizingExample = demoBs5Example("sizing", "Sizing",  
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalSmall"], "Open modal"),
    BS5Modal("modalSmall", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalSmallTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-sm"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalSmallTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Medium"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalMedium"], "Open modal"),
    BS5Modal("modalMedium", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalMediumTitle", "aria-hidden":"true"], 
      BS5ModalDialog(
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalMediumTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLarge"], "Open modal"),
    BS5Modal("modalLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLargeTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-lg"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalLargeTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalExtraLarge"], "Open modal"),
    BS5Modal("modalExtraLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalExtraLargeTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-xl"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalExtraLargeTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `H5H4(["h5", "text-muted", "mt-3"], "Small"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalSmall"], "Open modal"),
  BS5Modal("modalSmall", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalSmallTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-sm"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalSmallTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Medium"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalMedium"], "Open modal"),
  BS5Modal("modalMedium", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalMediumTitle", "aria-hidden":"true"], 
    BS5ModalDialog(
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalMediumTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Large"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalLarge"], "Open modal"),
  BS5Modal("modalLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalLargeTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-lg"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalLargeTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalExtraLarge"], "Open modal"),
  BS5Modal("modalExtraLarge", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalExtraLargeTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-xl"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalExtraLargeTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
  ``);

auto alwaysExample = demoBs5Example("always", "Always",  
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Always"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenAlways"], "Open modal"),
    BS5Modal("modalFullscreenAlways", ["fade"], ["tabindex":"-1", "role":"dialog", 
      "aria-labelledby":"modalFullscreenAlwaysTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-fullscreen"], ["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenAlwaysTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below small"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenSm"], "Open modal"),
    BS5Modal("modalFullscreenSm", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenSmTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-fullscreen-sm-down"], ["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenSmTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below medium"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenMd"], "Open modal"),
      BS5Modal("modalFullscreenMd", ["fade"],  ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenMdTitle", "aria-hidden":"true"], 
        BS5ModalDialog(["modal-fullscreen-md-down"], ["role":"document"], 
          BS5ModalContent(
            BS5ModalHeader(
              BS5ModalTitle("modalFullscreenMdTitle", "Modal title"),
              BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
            BS5ModalBody(
              H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
            BS5ModalFooter(
              BS5Button(["btn-primary"], "Action"),
              BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below large"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenLg"], "Open modal"),
    BS5Modal("modalFullscreenLg", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenLgTitle", "aria-hidden":"true"],
      BS5ModalDialog(["modal-fullscreen-lg-down"], ["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenLgTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))), 
    H5H4(["h5", "text-muted", "mt-3"], "Below extra large"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXl"], "Open modal"),
    BS5Modal("modalFullscreenXl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXlTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-fullscreen-xl-down"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenXlTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
    H5H4(["h5", "text-muted", "mt-3"], "Below extra extra large"),
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXxl"], "Open modal"),
    BS5Modal("modalFullscreenXxl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXxlTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-fullscreen-xxl-down"], ["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenXxlTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody( 
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
), 
`H5H4(["h5", "text-muted", "mt-3"], "Always"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenAlways"], "Open modal"),
  BS5Modal("modalFullscreenAlways", ["fade"], ["tabindex":"-1", "role":"dialog", 
  "aria-labelledby":"modalFullscreenAlwaysTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-fullscreen"], ["role":"document"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalFullscreenAlwaysTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below small"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenSm"], "Open modal"),
  BS5Modal("modalFullscreenSm", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenSmTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-fullscreen-sm-down"], ["role":"document"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalFullscreenSmTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below medium"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenMd"], "Open modal"),
    BS5Modal("modalFullscreenMd", ["fade"],  ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenMdTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["modal-fullscreen-md-down"], ["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalFullscreenMdTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below large"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenLg"], "Open modal"),
  BS5Modal("modalFullscreenLg", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenLgTitle", "aria-hidden":"true"],
    BS5ModalDialog(["modal-fullscreen-lg-down"], ["role":"document"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalFullscreenLgTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))), 
  H5H4(["h5", "text-muted", "mt-3"], "Below extra large"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXl"], "Open modal"),
  BS5Modal("modalFullscreenXl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXlTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-fullscreen-xl-down"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalFullscreenXlTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close"))))),
  H5H4(["h5", "text-muted", "mt-3"], "Below extra extra large"),
  BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalFullscreenXxl"], "Open modal"),
  BS5Modal("modalFullscreenXxl", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalFullscreenXxlTitle", "aria-hidden":"true"], 
    BS5ModalDialog(["modal-fullscreen-xxl-down"], ["role":"document"], 
      BS5ModalContent(
        BS5ModalHeader(
          BS5ModalTitle("modalFullscreenXxlTitle", "Modal title"),
          BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
        BS5ModalBody( 
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
        BS5ModalFooter(
          BS5Button(["btn-primary"], "Action"),
          BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
      ``);

auto animationExample = demoBs5Example("animation", "No animation",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalNoAnimation"], "Open modal"),
    BS5Modal("modalNoAnimation", ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalNoAnimationTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalNoAnimationTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalNoAnimation"], "Open modal"),
    BS5Modal("modalNoAnimation", ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalNoAnimationTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["role":"document"], 
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalNoAnimationTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])),
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, 
            ``);

auto backExample = demoBs5Example("backdrop", "Static backdrop",  
  H5Div(
    BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalStaticBackdrop", "data-backdrop":"static", "data-keyboard":"false"], "Open modal"),
    BS5Modal("modalStaticBackdrop", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticBackdropTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["role":"document"],
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalStaticBackdropTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])), 
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))
  ), 
  `BS5Button(["btn-primary"], ["data-toggle":"modal", "data-bs-target":"#modalStaticBackdrop", "data-backdrop":"static", "data-keyboard":"false"], "Open modal"),
    BS5Modal("modalStaticBackdrop", ["fade"], ["tabindex":"-1", "role":"dialog", "aria-labelledby":"modalStaticBackdropTitle", "aria-hidden":"true"], 
      BS5ModalDialog(["role":"document"],
        BS5ModalContent(
          BS5ModalHeader(
            BS5ModalTitle("modalStaticBackdropTitle", "Modal title"),
            BS5Button(["btn-close"], ["data-dismiss":"modal", "aria-label":"Close"])), 
          BS5ModalBody(
            H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
          BS5ModalFooter(
            BS5Button(["btn-primary"], "Action"),
            BS5Button(["btn-secondary"], ["data-dismiss":"modal"], "Close")))))`, ``);

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Components"], "Modals")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "components"),
      listSections("basic", "components", "modals")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Modals"),
      H5Hr,

      staticExample,  
      headerExample,  
      footerExample,  
      longExample,  
      scrollableExample,  
      verticallyExample,  
      sizingExample,  
      animationExample,  
      backExample,
      alwaysExample,
      animationExample,
      backExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}