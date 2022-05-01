package utility

import (
	"database/sql"

	_ "github.com/mattn/go-sqlite3"
)

var db, err = sql.Open("sqlite3", "./fishue-tracker.db")

func GetDatabase() (*sql.DB, error) {
	if err != nil {
		return nil, err
	}
	return db, nil
}