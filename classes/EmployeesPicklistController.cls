global class EmployeesPicklistController extends VisualEditor.DynamicPickList{
    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select an Option', '');
        return defaultValue;
    }
    global override VisualEditor.DynamicPickListRows getValues() {
        List<Employee__c> employees = new List<Employee__c>([SELECT Id, Name FROM Employee__c]);
        VisualEditor.DynamicPickListRows employeesValues = new VisualEditor.DynamicPickListRows();
        for (Employee__c employee : employees) {
            VisualEditor.DataRow row = new VisualEditor.DataRow(employee.Name, (String)employee.Id);
            employeesValues.addRow(row);
        }
        return employeesValues;
    }
}