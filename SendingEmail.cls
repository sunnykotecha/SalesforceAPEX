public class SendingDocasattachmentExample {
	public pagereference sendDocAttach() {
		Document doc = [SELECT Id,Name FROM Document WHERE Name = 'Sample'];
		Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
		semail.setDocumentAttachments(new ID[]{doc.id});
		semail.setSubject('Sending Document as attachemnt example');
		String[] sendTo = new String[]{'XXXXXXXX@gmail.com'};
		semail.setToAddresses(sendTo);
		semail.setPlainTextBody('Please find the attached document details');
		Messaging.sendEmail(new Messaging.SingleEmailMessage[]{semail});
		return null;
	}
}
