package org.openiam.spml2.spi.peoplesoft;

import org.mule.util.StringUtils;
import org.openiam.idm.srvc.mngsys.dto.ManagedSys;
import org.openiam.spml2.spi.common.jdbc.AbstractJDBCCommand;

import java.sql.*;
import java.util.ResourceBundle;

/**
 *
 */
public abstract class AbstractPeoplesoftCommand extends AbstractJDBCCommand {

    private static final String EMPTY_STRING = "";
    private static final String BLANK_SPACE_STRING = " ";

    private static final String SELECT_SQL = "SELECT OPRID FROM %sPSOPRDEFN WHERE OPRID=?";
    private static final String SELECT_ROLE = "SELECT ROLEUSER, ROLENAME FROM %sPSROLEUSER WHERE ROLEUSER=? AND ROLENAME = ? ";
    private static final String SELECT_SYMBOLIC_ID = "SELECT SYMBOLICID FROM %sPSACCESSPRFL";

    private static final String INSERT_ADD_USER = "INSERT INTO %sPSOPRDEFN (OPRID, OPRDEFNDESC, EMPLID, EMAILID, SYMBOLICID, " +
            " VERSION,  OPRCLASS, ROWSECCLASS, OPERPSWD, ENCRYPTED, LANGUAGE_CD, MULTILANG, CURRENCY_CD, LASTPSWDCHANGE," +
            " ACCTLOCK, PRCSPRFLCLS, DEFAULTNAVHP, FAILEDLOGINS, EXPENT, OPRTYPE, USERIDALIAS,  LASTUPDOPRID, PTALLOWSWITCHUSER   ) " +
            " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";

    private static final String INSERT_ADD_ROLE = "INSERT INTO %sPSROLEUSER (ROLEUSER, ROLENAME, DYNAMIC_SW ) VALUES (?, ?, ?)";

    private static final String INSERT_ADD_ALIAS = "INSERT INTO %sPSOPRALIAS (OPRID, OPRALIASTYPE,OPRALIASVALUE, EMPLID, SETID, " +
            " CUST_ID, VENDOR_ID, APPLID, CONTACT_ID, PERSON_ID, EXT_ORG_ID, BIDDER_ID, EOTP_PARTNERID ) " +
            " VALUES (?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?   )";

    private static final String CHANGE_PASSWORD_SQL = "UPDATE %sPSOPRDEFN SET OPERPSWD = ? WHERE OPRID = ?";

    static protected ResourceBundle res = ResourceBundle.getBundle("peoplesoft");
    static protected String schemaName = null;


    protected boolean identityExists(final Connection connection, final String principalName) throws SQLException {
        boolean exists = false;
        if (connection != null) {
            if (StringUtils.isNotBlank(principalName)) {

                String sql = String.format(SELECT_SQL, schemaName);

                final PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, principalName);
                final ResultSet rs = statement.executeQuery();
                if (rs != null && rs.next()) {
                    return true;
                }
            }
        }
        return exists;
    }

    protected boolean roleExists(final Connection connection, final String principalName, final String roleName) throws SQLException {
        boolean exists = false;
        if (connection != null) {
            if (StringUtils.isNotBlank(principalName)) {
                String sql = String.format(SELECT_ROLE, schemaName);
                final PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, principalName);
                statement.setString(2, roleName);

                final ResultSet rs = statement.executeQuery();
                if (rs != null && rs.next()) {
                    return true;
                }
            }
        }
        return exists;
    }

    protected String getSymbolicID(Connection connection) throws SQLException {

        if (connection != null) {
            String sql = String.format(SELECT_SYMBOLIC_ID, schemaName);
            final PreparedStatement statement = connection.prepareStatement(sql);
            final ResultSet rs = statement.executeQuery();
            if (rs != null && rs.next()) {
                return rs.getString("SYMBOLICID");
            }

        }
        return null;
    }


    protected boolean insertUser(final Connection connection, final String principalName, final String displayName,
                                 final String employeeId, final String email, final String symbolicId,
                                 final String password) throws SQLException {
        boolean exists = false;
        if (connection != null) {
            if (StringUtils.isNotBlank(principalName)) {
                String sql = String.format(INSERT_ADD_USER, schemaName);
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, principalName);
                statement.setString(2, nullCheck(displayName));
                statement.setString(3, nullCheck(employeeId));
                statement.setString(4, nullCheck(email));
                statement.setString(5, symbolicId);
                statement.setInt(6, 1);
                statement.setString(7, "HCDPALL");   //OPRCLASS
                statement.setString(8, "HCDPALL");   //ROWSECCLASS
                statement.setString(9, password);   //OPERPSWD
                statement.setInt(10, 0);             //ENCRYPTED
                statement.setString(11, "ENG");     //LANGUAGE_CD
                statement.setInt(12, 0);             //MULTILANG
                statement.setString(13, "USD");     //CURRENCY CODE
                statement.setDate(14, new Date(System.currentTimeMillis()));  // LASTPSWDCHANGE
                statement.setInt(15, 0);                            // ACCTLOCK
                statement.setString(16, "HCSPPRFL");                 // PRCSPRFLCLS
                statement.setString(17, "HCSPNAVHP");               //DEFAULTNAVHP
                statement.setInt(18, 0);                            //FAILEDLOGINS
                statement.setInt(19, 0);                            //EXPENT
                statement.setInt(20, 1);                            // OPRTYPE
                statement.setString(21, nullCheck(employeeId));                // USERIDALIAS
                statement.setString(22, BLANK_SPACE_STRING);            // LASTUPDOPRID
                statement.setInt(23, 0);                             // PTALLOWSWITCHUSER

                int result = statement.executeUpdate();
                if (result == 0) {
                    return false;
                }

                // INSERT ALIAS
                sql = String.format(INSERT_ADD_ALIAS, schemaName);
                statement = connection.prepareStatement(sql);
                statement.setString(1, principalName);
                statement.setString(2, "EMP");
                statement.setString(3, employeeId);
                statement.setString(4, employeeId);
                statement.setString(5, BLANK_SPACE_STRING); //SETID
                statement.setString(6, BLANK_SPACE_STRING); //CUST_ID
                statement.setString(7, BLANK_SPACE_STRING); //VENDOR_ID
                statement.setString(8, BLANK_SPACE_STRING); //APPLID
                statement.setString(9, BLANK_SPACE_STRING); //CONTACT_ID
                statement.setString(10, BLANK_SPACE_STRING); //PERSON_ID
                statement.setString(11, BLANK_SPACE_STRING); //EXT_ORG_ID
                statement.setString(12, BLANK_SPACE_STRING); //BIDDER_ID
                statement.setInt(13, 0); //EOTP_PARTNERID


                result = statement.executeUpdate();
                return result != 0;


            }
        }
        return exists;
    }

    protected String nullCheck(String str) {
        if (str == null || str.isEmpty()){
            return BLANK_SPACE_STRING;

        }
        return str;
    }

    protected boolean addToRole(final Connection connection, final String principalName, final String role) throws SQLException {
        boolean exists = false;
        if (connection != null) {
            if (StringUtils.isNotBlank(principalName)) {
                String sql = String.format(INSERT_ADD_ROLE, schemaName);
                final PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, principalName);
                statement.setString(2, role);
                statement.setString(3, "N");
                int result = statement.executeUpdate();
                return result != 0;

            }
        }
        return exists;
    }



    protected boolean changePassword(final ManagedSys managedSys, final String principalName, final String password) throws SQLException, ClassNotFoundException {

        Connection connection = null;

        try {
            connection = connectionMgr.connect(managedSys);
            String sql = String.format(CHANGE_PASSWORD_SQL, schemaName);


            final PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(2, principalName);
            statement.setString(1, password);
            int result = statement.executeUpdate();
            return result != 0;

        } finally {
            if(connection != null) {
                connection.close();
            }
        }
    }
}