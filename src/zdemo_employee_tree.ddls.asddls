@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@OData.hierarchy.recursiveHierarchy: [{entity.name: 'ZDEMO_EMPLOYEE_HN'}]
define root view entity ZDEMO_EMPLOYEE_TREE 
as select from /dmo/employee_hr
  association of many to one ZDEMO_EMPLOYEE_TREE as _Manager on $projection.Manager = _Manager.Employee
{
  key employee        as Employee,
      first_name      as FirstName,
      last_name       as LastName,
      
      @Semantics.amount.currencyCode: 'SalaryCurrency'
      salary          as Salary,
      salary_currency as SalaryCurrency,
      
      @EndUserText.label: 'Manager'
      manager         as Manager,

      _Manager
}
