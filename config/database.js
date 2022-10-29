
//Database connections
module.exports = {
"prepare":{
 "host"     : 'localhost',
    "user"     : 'root',
    "password" : 'uthti2010',
    "database" : 'prepare',
	"connectionLimit": '50'
},
"prepare_db":{
 
    'connection': {
        'host': 'localhost',
        'user': 'root',
        'password': 'uthti2010',
	"connectLimit": '10'
    },
'database': 'prepare',
    'users_table': 'users'
}

}