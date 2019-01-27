package org.freegeek.volunteer.restapi.flyway;
import org.flywaydb.core.Flyway;

/**
 * Created by tom on 1/26/19.
 */
public class MigrationRunner {
    public static void main(String[] args) throws Exception {
        Flyway flyway = Flyway.configure().dataSource(System.getenv("JDBC_DATABASE_URL"),
                System.getenv("JDBC_DATABASE_USERNAME"),
                System.getenv("JDBC_DATABASE_PASSWORD")).load();
        flyway.migrate();
    }
}
