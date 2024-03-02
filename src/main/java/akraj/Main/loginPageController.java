package akraj.Main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import akraj.Main.dataBase.dataBaseController;

import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;
import java.sql.*;

@Controller
public class loginPageController {

    @RequestMapping("loginPage")
    public String login() {
        return "loginPagejsp";

    }

    @RequestMapping("dataEntry")
    public String giveCheckPage() {
        return "dataEntryPagejsp";
    }

    @RequestMapping("twoButton")
    public String twoButtonPage() {
        return "twoButtonjsp";
    }

    ///////////////
    @RequestMapping("searchData")
    public String searchData() {
        return "searchDatajsp";
    }

    ///////////
    ///////////
    @Autowired
    dataBaseController db;

    @RequestMapping("dataByPartNo")
    public String dataByPartNo(@RequestParam("partNumber") String partNumber, ModelMap m) throws Exception {
        String[] data = db.showDataByPartno(partNumber);
        // System.out.println(Arrays.toString(data)); // Print the entire data array
        if (data.length != 0) {
            m.addAttribute("partNumber", data[0]);
            m.addAttribute("lotNumber", data[1]);
            m.addAttribute("htLotNumber", data[2]);
            m.addAttribute("rmHeatNumber", data[3]);
            m.addAttribute("quantity", data[4]);
            m.addAttribute("operatorName", data[5]);
            m.addAttribute("supervisorName", data[6]);
            m.addAttribute("sapTokenNo", data[7]);
            m.addAttribute("shift", data[8]);
            m.addAttribute("dateOfEntry", data[9]);
            m.addAttribute("time", data[10]);
        } else {
            // Handle the case where data is null or has incorrect length
            return "noDataFoundjsp";
        }
        return "showResultPartNojsp";
    }

    ////////////////////
    @RequestMapping("formSubmit")
    public String formSubmitted(@RequestParam("partNo") String partNo, @RequestParam("lotNo") int lotNo,
            @RequestParam("htLotNo") String htLotNo, @RequestParam("rmHeatNo") String rmHeatNo,
            @RequestParam("quantity") int quantity, @RequestParam("operatorName") String operatorName,
            @RequestParam("supervisorName") String supervisorName, @RequestParam("sapTokenNo") int sapTokenNo,
            @RequestParam("shift") String shift) throws Exception {

        Connection con = DriverManager.getConnection(
                "jdbc:mysql://mysql-33130311-akclient.a.aivencloud.com:26670/akdatabase", "avnadmin",
                "AVNS_qSQLP6X3lF7JWpv6OpH");
        // java.sql.Statement st = con.createStatement();
        PreparedStatement ps = con.prepareStatement("insert into akdatabase values(?,?,?,?,?,?,?,?,?,?,?);");
        ps.setString(1, partNo);
        ps.setInt(2, lotNo);
        ps.setString(3, htLotNo);
        ps.setString(4, rmHeatNo);
        ps.setInt(5, quantity);
        ps.setString(6, operatorName);
        ps.setString(7, supervisorName);
        ps.setInt(8, sapTokenNo);
        ps.setString(9, shift);
        ZonedDateTime indianTime = ZonedDateTime.now(ZoneId.of("Asia/Kolkata"));
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
        String formattedTime = indianTime.format(formatter);
        LocalDate indianDate = LocalDate.now(ZoneId.of("Asia/Kolkata"));
        String formattedDate = indianDate.toString();
        ps.setString(10, formattedDate);
        ps.setString(11, formattedTime);
        int num = ps.executeUpdate();
        if (num == 1) {
            // return "errorjsp";
            return "formSubmitSuccessjsp";
        }
        return "errorjsp";

    }

    /////////////////////////
    @RequestMapping("dataByLotNo")
    public String dataByLotNo(@RequestParam("lotNumber") int lotNumber, ModelMap m) throws Exception {
        String[] data = db.showDataByLotno(lotNumber);
        // System.out.println(Arrays.toString(data)); // Print the entire data array
        if (data.length != 0) {
            m.addAttribute("partNumber", data[0]);
            m.addAttribute("lotNumber", data[1]);
            m.addAttribute("htLotNumber", data[2]);
            m.addAttribute("rmHeatNumber", data[3]);
            m.addAttribute("quantity", data[4]);
            m.addAttribute("operatorName", data[5]);
            m.addAttribute("supervisorName", data[6]);
            m.addAttribute("sapTokenNo", data[7]);
            m.addAttribute("shift", data[8]);
            m.addAttribute("dateOfEntry", data[9]);
            m.addAttribute("time", data[10]);
        } else {
            // Handle the case where data is null or has incorrect length
            return "noDataFoundjsp";
        }
        return "showResultLotNojsp";
    }
}
