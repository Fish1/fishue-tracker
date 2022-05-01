#!/bin/bash

echo "Generating Database..."
echo " - create user table"
sqlite3 fishue-tracker.db < ./schema/user.sql
echo " - create issue table"
sqlite3 fishue-tracker.db < ./schema/issue.sql
echo " - create issue_comment table"
sqlite3 fishue-tracker.db < ./schema/issue_comment.sql