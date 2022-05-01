package routes

import (
	"encoding/json"
	"fishue-tracker/repositories"
	"fmt"
	"net/http"
)

func UserRoute(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case http.MethodGet:

		users, err := repositories.GetUsers()
		json, _ := json.Marshal(users);
		if err != nil {
			fmt.Fprintf(w, "error")
		} else {
			fmt.Fprintf(w, string(json))
		}

	case http.MethodPost:
		fmt.Fprintf(w, "post request")
	default:
		fmt.Fprintf(w, "bad")
	}
}