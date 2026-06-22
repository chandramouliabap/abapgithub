@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student - Root View Entity'
@Metadata.allowExtensions: true
define root view entity ZRAP_R_STUDENT
  as select from zrap_student
{
  key id       as Id,
      name     as Name,
      location as Location,
      course   as Course,
      status   as Status,

      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat as LocalLastChangedAt,
      @Semantics.user.createdBy: true
      createdby as CreatedBy,
      @Semantics.user.lastChangedBy: true
      changedby as ChangedBy
}
