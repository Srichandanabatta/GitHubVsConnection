global class AccountSoapService {
    
    // This web service fetches Account details based on Account ID
    webService static Account getAccountById(Id accountId) {
        try {
            Account acc = [SELECT Id, Name, Industry, Phone, BillingCity 
                           FROM Account 
                           WHERE Id = :accountId 
                           LIMIT 1];

            return acc;  // Returning the Account object
        } catch (Exception e) {
            System.debug('Error: ' + e.getMessage());
            return null;  // Return null if account not found
        }
    }
}