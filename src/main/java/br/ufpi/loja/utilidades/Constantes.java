package br.ufpi.loja.utilidades;

/**
 * Guarda as constantes da aplicação
 * @author armandosoaressousa
 *
 */
public class Constantes {
	public static final String DATA_DIRECTORY = "data";
	public static final String USER_DIRECTORY = "user.dir";
	public static final String TEMP_DIRECTORY = "temp";
	public static final String FILE_SEPARATOR = "file.separator";
	public static final int MAX_MEMORY_SIZE = 1024 * 1024 * 20;
	public static final int MAX_REQUEST_SIZE = 1024 * 1024 * 10;
	
	public static final String DATABASE_USER="root";
	public static final String DATABASE_USER_PASSWORD="skyinfo";
	public static final String DATABASE_URL="jdbc:mysql://localhost/bancoloja";
	public static final String DATABASE_DRIVER="com.mysql.jdbc.Driver";
	
	public static final String ORM_DIALECT="hibernate.dialect";
	public static final String DATABASE_ORM_DIALECT="org.hibernate.dialect.MySQL5Dialect";
	public static final String ORM_DIALECT_SHOW_SQL="hibernate.show_sql";
	public static final String ORM_DIALECT_SHOW_SQL_ON="true";
	public static final String ORM_DDL_AUTO="hibernate.hbm2ddl.auto";
	public static final String ORM_DDL_AUTO_UPDATE="update";
	
	public static final String PATH_MODEL_PACKAGES="br.ufpi.loja.modelos";
}