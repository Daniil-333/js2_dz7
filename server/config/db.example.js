import mysql from "mysql2";
  
// create the connection to database
const pool = mysql.createPool({
  host: 'localhost', // 127.0.0.1 for Mac OS, localhost for Windows
  user: 'root',
  password: 'rp3#l7_1',
  database: 'shop_brand',
  waitForConnections : true,
  connectionLimit : 10, 
  maxIdle : 10,  // максимальное число незанятых соединений, значение по умолчанию такое же, как и у `connectionLimit` 
  idleTimeout : 60000, // таймаут бездействующих подключений, в миллисекундах, значение по умолчанию 60000 
  queueLimit : 0
});
 
export default pool;