CREATE OR REPLACE FUNCTION is_siapsidang()
RETURNS trigger AS
$$
BEGIN
UPDATE MATA_KULIAH_SPESIAL SET issiapsidang = TRUE
WHERE NEW.ijinmajusidang = TRUE AND NEW.pengumpulanhardcopy  = TRUE;
RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_siapsidang
AFTER UPDATE
ON MATA_KULIAH_SPESIAL
FOR EACH ROW
WHEN (OLD.ijinmajusidang IS DISTINCT FROM NEW.ijinmajusidang OR OLD.pengumpulanhardcopy IS DISTINCT FROM NEW.pengumpulanhardcopy)
EXECUTE PROCEDURE is_siapsidang();