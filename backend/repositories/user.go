package repositories

import (
	"fishue-tracker/models"
	"fishue-tracker/utility"
)


func GetUsers() ([] models.User , error) {
	db, err := utility.GetDatabase()
	if err != nil {
		return nil, err
	}
	rows, err := db.Query("SELECT uid, username, display_name, password FROM user")
	if err != nil {
		return nil, err
	}

	var results [] models.User
	for rows.Next() {
		var row models.User
		rows.Scan(&row.Uid, &row.Username, &row.DisplayName, &row.Password);
		results = append(results, row)
	}
	return results, nil
}