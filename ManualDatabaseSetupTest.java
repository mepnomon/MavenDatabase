package com.eeu436.mavendatabase;

import java.io.IOException;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Mini Project 2: Java Database
 * Class: Manual Database Setup Test
 * Purpose: Maven Tester to verify Database Setup.
 * Comments: SQL files were verified in mySQL workbench.
 * Date: 02/13/2016
 * 
 * @author EEU436
 */
public class ManualDatabaseSetupTest {
    
    public ManualDatabaseSetupTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
    
    /**
     * Tests creation of tables.
     * @throws IOException
     * @throws ClassNotFoundException
     * @throws SQLException 
     */
    @Test
    public void testCreateTables() throws IOException, ClassNotFoundException, 
            SQLException {
      
        ManualDatabaseSetup testDB = new ManualDatabaseSetup();
        assertTrue(testDB.createTables());
    }
    
    /**
     * Tests adding of seed Data to tables.
     * @throws IOException
     * @throws ClassNotFoundException
     * @throws SQLException 
     */
    @Test
    public void testAddSeedData() throws IOException, ClassNotFoundException,
            SQLException{
        
        ManualDatabaseSetup testDB = new ManualDatabaseSetup();
        assertTrue(testDB.addSeedData());
    }
    
    /**
     * Tests dropping of all added tables.
     * @throws IOException
     * @throws ClassNotFoundException
     * @throws SQLException 
     */
    @Test
    public void testDestroyTables() throws IOException, ClassNotFoundException, 
            SQLException{
        
        ManualDatabaseSetup testDB = new ManualDatabaseSetup();
        assertTrue(testDB.destroyTables());
    }
}
