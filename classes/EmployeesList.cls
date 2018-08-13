public class EmployeesList {
    @auraEnabled
    public static List<Employee__c> getEmployees(String teamName, String positionName) {
        String query = 'SELECT Name, Position__c, Team__c, Image__c FROM Employee__c';
        if (teamName != '') {
            query += ' WHERE Team__c = \'' + teamName + '\'';
        }
        if (positionName != '') {
            if (teamName != '') {
                query += ' AND Position__c = \'' + positionName +
                    '\'';
            } else {
                query += ' WHERE Position__c = \'' + positionName
                    + '\'';
            }
        }
        return database.query(query);
    }
}