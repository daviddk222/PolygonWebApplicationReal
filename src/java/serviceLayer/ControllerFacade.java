package serviceLayer;

import exceptions.FloorAlreadyExistsException;
import exceptions.UserAlreadyExistsException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import serviceLayer.entity.Report;
import serviceLayer.entity.Building;
import serviceLayer.entity.Customer;
import serviceLayer.entity.Document;
import serviceLayer.entity.Floor;
import serviceLayer.entity.Floorplan;
import serviceLayer.entity.Image;
import serviceLayer.entity.User;
import serviceLayer.entity.Checkup;

/**
 *
 * @author Daniel
 */
public class ControllerFacade {

    Controller controller = new Controller();

    public void addBuilding(String name, String address, int zipcodes, String city, int buildingYear, int floors, double totalSize, String buildingOwner, int buildingCondition, int costumerId) throws SQLException, ClassNotFoundException {
        controller.addBuilding(name, address, zipcodes, city, buildingYear, floors, totalSize, buildingOwner, buildingCondition, costumerId);
    }

    //Takes a list of floor objects and adds them to the database
    public void addFloor(int floorNumber, double size, int buildingId) throws FloorAlreadyExistsException {
        controller.addFloor(floorNumber, size, buildingId);
    }

    // creates a customer and inserts it into the database
    public void addCustomer(String companyName, String companyOwnerFirstName, String companyOwnerLastName, String customerEmail, int userId) throws SQLException, ClassNotFoundException, UserAlreadyExistsException {
        controller.addCustomer(companyName, companyOwnerFirstName, companyOwnerLastName, customerEmail, userId);
    }

    public void addUserAndCustomer(String companyName, String customerFirstName, String customerLastName, String customerEmail, String username, String password, int type) throws UserAlreadyExistsException {
        controller.addUserAndCustomer(companyName, customerFirstName, customerLastName, customerEmail, username, password, type);
    }

    public void deleteBuildingAndFloorsByBuildingId(int buildingId) {
        controller.deleteBuildingAndFloorsByBuildingId(buildingId);
    }

    public boolean validateLogin(String customerUsername, String customerPassword, HttpSession curSession) {
        return controller.validateLogin(customerUsername, customerPassword, curSession);
    }

    public int getBuildingIdByName(String name) {
        return controller.getBuildingIdByName(name);
    }

    public Building getBuildingByBuildingId(int buildingId) {
        return controller.getBuildingByBuildingId(buildingId);
    }

    public List<Building> getAllBuildingsByCustomerId(int CustomerId) {
        return controller.getAllBuildingsByCustomerId(CustomerId);
    }

    public void deleteFloorByFloorId(int floorId) {
        controller.deleteFloorByFloorId(floorId);
    }

    public List<Floor> getAllFloorsByBuildingId(int buildingId) {
        return controller.getAllFloorsByBuildingId(buildingId);
    }

    public void updateNumberOfFloorsByBuildingId(int buildingId) {
        controller.updateNumberOfFloorsByBuildingId(buildingId);
    }

    public void addUser(String username, String password, int type) throws UserAlreadyExistsException {
        controller.addUser(username, password, type);
    }

    public List<Customer> getAllCustomers() {
        return controller.getAllCustomers();
    }

    public Customer getCustomerByCustomerId(int customerId) {
        return controller.getCustomerByCustomerId(customerId);
    }

    public void deleteUserAndCustomerByCustomerId(int customerId) {
        controller.deleteUserAndCustomerByCustomerId(customerId);
    }

    public void saveReport(InputStream input, String name, String date, int buildingId) throws ClassNotFoundException {
        controller.saveReport(input, name, date, buildingId);
    }

    public List<Report> getAllReportsByBuildingId(int buildingId) {
        return controller.getAllReportsByBuildingId(buildingId);
    }

    public InputStream downloadReport(int reportId) throws ClassNotFoundException {
        return controller.downloadReport(reportId);
    }

    public void saveDocument(InputStream input, String name, String date, int buildingId) throws ClassNotFoundException {
        controller.saveDocument(input, name, date, buildingId);
    }

    public List<Document> getAllDocumentsByBuildingId(int buildingId) {
        return controller.getAlDocumentsByBuildingId(buildingId);
    }

    public InputStream downloadDocument(int documentId) throws ClassNotFoundException {
        return controller.downloadDocument(documentId);
    }

    public String getDocumentNameById(int documentId) {
        return controller.getDocumentNameById(documentId);
    }

    public void deleteReportByReportId(int reportId) {
        controller.deleteReportByReportId(reportId);
    }

    public void deleteFloorplanByFloorplanId(int floorplanId) {
        controller.deleteFloorplanByFloorplanId(floorplanId);
    }

    public Floorplan getFloorplanByFloorId(int floorId) {
        return controller.getFloorplanByFloorId(floorId);
    }

    public InputStream downloadFloorplan(int floorplanId) {
        return controller.downloadFloorplan(floorplanId);
    }

    public void uploadFloorplan(InputStream input, String name, int floorId) {
        controller.uploadFloorplan(input, name, floorId);
    }

    public String getReportNameById(int reportId) {
        return controller.getReportNameById(reportId);
    }

    public String getFloorplanNameById(int floorplanId) {
        return controller.getFloorplanNameById(floorplanId);
    }

    public void deleteDocumentByDocumentId(int documentId) {
        controller.deleteDocumentByDocumentId(documentId);
    }

    public void saveImage(InputStream inputStream, String name, int buildingId) throws ClassNotFoundException {
        controller.saveImage(inputStream, name, buildingId);
    }

    public List<Image> getAllImagesByBuildingId(int buildingId) {
        return controller.getAllImagesByBuildingId(buildingId);
    }

    public InputStream downloadImage(int imageId) throws ClassNotFoundException {
        return controller.downloadImage(imageId);
    }

    public void deleteImageByImageId(int imageId) {
        controller.deleteImageByImageId(imageId);
    }

    public String getImageNameById(int imageId) {
        return controller.getImageNameById(imageId);
    }
    
    public void updateCheckupsStatusById(int checkupId, String Status) {
        controller.updateCheckupsStatusById(checkupId, Status);
    }
    
    public List<Checkup> getAllCheckupsByBuildingId(int buildingId) {
        return controller.getAllCheckupsByBuildingId(buildingId);
    }
    
    public Checkup getCheckupById(int checkupId) {
        return controller.getCheckupById(checkupId);
    }
    
    public void createNewCheckup(String status,String date, String email, int buildingId) {
        Checkup checkup = new Checkup();
        controller.createNewCheckup(status, date, email, buildingId);
    }
    
    public void deleteCheckupById(int checkupId) {
        controller.deleteCheckupById(checkupId);
    }
    
    public String getEmailById(int customerId) {
        return controller.getEmailById(customerId);
    }
}
