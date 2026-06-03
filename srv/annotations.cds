using CatalogService from './service';

annotate CatalogService.empSalarySet with @(
    UI.SelectionFields: [ Name ],

    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: Name,
            Label: 'Employee Name'
        },
        {
            $Type: 'UI.DataField',
            Value: Salary,
            Label: 'Employee Salary'
        }
    ],

    UI.Facets: [
        {
            $Type: 'UI.ReferenceFacet',
            Label: 'Employee Details',
            Target: '@UI.FieldGroup#EmployeeDetails'
        }
    ],

    UI.FieldGroup #EmployeeDetails: {
        $Type: 'UI.FieldGroupType',
        Data: [
            {
                $Type: 'UI.DataField',
                Value: Name,
                Label: 'Employee Name'
            },
            {
                $Type: 'UI.DataField',
                Value: Salary,
                Label: 'Employee Salary'
            }
        ]
    }
);