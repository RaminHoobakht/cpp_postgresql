#include <iostream>
#include <pqxx/pqxx>

int main() {

    std::string connection_string{
            "user = postgres password = hinata1971 hostaddr = 127.0.0.1 port = "
            "5432 dbname = postgres target_session_attrs=read-write"};

    pqxx::connection pq_cnn(connection_string);

    if (pq_cnn.is_open()) {
        std::cout << "connection is open ..." << '\n';
    } else {
        std::cout << "connect to database was failed ...\n";
    }

    pq_cnn.close();

    std::cout << "\n #(12:41:53): The End ..." << std::endl;
    return (EXIT_SUCCESS);
}
