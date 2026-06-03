using {employee as db} from '../db/schema';

service CatalogService @(requires: 'authenticated-user') {
    @odata.draft.enabled
    entity empSalarySet as projection on db.empSalary;
}