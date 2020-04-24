module uim.bootstrap.extras.mailboxes;

import uim.bootstrap;

class DBS4MailboxStar : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-star"]));
}
mixin(H5Calls!"BS4MailboxStar");

class DBS4MailboxName : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-name"]));
}
mixin(H5Calls!"BS4MailboxName");

class DBS4MailboxSubject : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-subject"]));
}
mixin(H5Calls!"BS4MailboxSubject");

class DBS4MailboxAttachment : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-attachment"]));
}
mixin(H5Calls!"BS4MailboxAttachment");

class DBS4MailboxDate : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-date"]));
}
mixin(H5Calls!"BS4MailboxDate");

class DBS4MailboxControls : DBS4Obj {
	mixin(H5This!("TD", ["mailbox-controls"]));

	mixin(MyContent!("button", "BS4Button"));
	mixin(MyContent!("group", "BS4ButtonGroup"));
}
mixin(H5Calls!"BS4MailboxControls");

class DBS4MailboxAttachments : DBS4Obj {
	mixin(H5This!("Ul", ["mailbox-attachments"]));

	mixin(MyContent!("attachment", "H5Li"));
}
mixin(H5Calls!"BS4MailboxAttachments");
