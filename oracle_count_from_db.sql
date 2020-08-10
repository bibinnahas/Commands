--See all counts from all tables form the specified Oracle DB
 SELECT table_name,
       To_number(Extractvalue(Xmltype(dbms_xmlgen.Getxml('select  count(*) c from '
                                                         || owner
                                                         || '.'
                                                         || table_name)),
                 '/ROWSET/ROW/C')) AS count
FROM   all_tables
WHERE  owner = ''