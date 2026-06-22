@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy zdemo_employee_HN
  as parent child hierarchy (
    source ZDEMO_EMPLOYEE_TREE
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      LastName ascending
  )
{
  key Employee,
      Manager
}
