package com.bishe.controller;

/**
 * @author Lxh
 * @date 2022/4/26 18:13
 */

import com.bishe.domain.*;
import com.bishe.service.Impl.*;
import com.bishe.utils.Fclass;
import com.bishe.utils.Uuid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 药品的控制器
 */
@Controller
@RequestMapping("/medicine")
public class MedicineController {


    @Autowired
    private AccountServiceImpl accountServiceImpl;
    @Autowired
    private MedicineServiceImpl medicineServiceImpl;
    @Autowired
    private ManuFacturerServiceImpl manuFacturerServiceImpl;
    @Autowired
    private AddMedicineDetailImpl addMedicineDetailImpl;


    @RequestMapping("/medicines")
    public String medicines(HttpServletRequest request, Integer id){
        System.out.println("medicines...");

        List<ManuFacturer> allManuFacturer = manuFacturerServiceImpl.findAllManuFacturer();
        request.setAttribute("manufacturers",allManuFacturer);

//        完成药品厂家的字符的显示
        List<Medicine> medicinelist = medicineServiceImpl.selectMedicineAll();
        List<String> medicineManufacturersStr = new ArrayList<String>();
        for ( Medicine medicine:medicinelist
             ) {
            Integer str = Integer.valueOf(medicine.getM_manufacturer());
            System.out.println("str"+str);
            ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicine.getM_manufacturer()));
            System.out.println("oneById:"+oneById);
            System.out.println("oneById.getMF_name():"+oneById.getMF_name());
            medicineManufacturersStr.add(oneById.getMF_name());

            System.out.println("medicineManufacturersStr:"+medicineManufacturersStr);
        }
        Account account= accountServiceImpl.findOneById(id);
        request.setAttribute("medicines",medicinelist);
        request.setAttribute("Medicine_manufacturers_str",medicineManufacturersStr);
        return "medicines";
    }

    @RequestMapping("/medicinesfindby")
    public String medicinesfindby(HttpServletRequest request, Integer id){
        System.out.println("medicinesfindby...");
//        DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String M_name = request.getParameter("M_name");
        String M_classifiy = request.getParameter("M_classifiy");
        String M_manufacturer = request.getParameter("M_manufacturer");
        List<Medicine> medicinelist = medicineServiceImpl.selectMedicineBy(M_name, M_classifiy, M_manufacturer);
        request.setAttribute("M_name",M_name);
        request.setAttribute("M_classifiy",M_classifiy);
        request.setAttribute("M_manufacturer",M_manufacturer);

//        完成药品厂家的字符的显示
        List<ManuFacturer> allManuFacturer = manuFacturerServiceImpl.findAllManuFacturer();
        request.setAttribute("manufacturers",allManuFacturer);
        List<String> medicineManufacturersStr = new ArrayList<String>();
        for ( Medicine medicine:medicinelist
        ) {
            Integer str = Integer.valueOf(medicine.getM_manufacturer());
            System.out.println("str"+str);
            ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicine.getM_manufacturer()));
            System.out.println("oneById:"+oneById);
            System.out.println("oneById.getMF_name():"+oneById.getMF_name());
            medicineManufacturersStr.add(oneById.getMF_name());

            System.out.println("medicineManufacturersStr:"+medicineManufacturersStr);
        }
        request.setAttribute("Medicine_manufacturers_str",medicineManufacturersStr);

        Account account= accountServiceImpl.findOneById(id);
        request.setAttribute("medicines",medicinelist);
        return "medicines";
    }
    @RequestMapping("/medicine-edit")
    public String medicine_edit(HttpServletRequest request,Integer id) throws ParseException {
        System.out.println("medicine-edit...");
        Medicine medicineById = medicineServiceImpl.selectMedicineById(id);
        System.out.println(medicineById);
        request.setAttribute("medicine",medicineById);

        //        完成药品厂家的字符的显示
        List<ManuFacturer> allManuFacturer = manuFacturerServiceImpl.findAllManuFacturer();
        request.setAttribute("manufacturers",allManuFacturer);
        List<String> medicineManufacturersStr = new ArrayList<String>();
        List<Medicine> medicinelist = medicineServiceImpl.selectMedicineAll();
        for ( Medicine medicine:medicinelist
        ) {
            Integer str = Integer.valueOf(medicine.getM_manufacturer());
            System.out.println("str"+str);
            ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicine.getM_manufacturer()));
            System.out.println("oneById:"+oneById);
            System.out.println("oneById.getMF_name():"+oneById.getMF_name());
            medicineManufacturersStr.add(oneById.getMF_name());

            System.out.println("medicineManufacturersStr:"+medicineManufacturersStr);
        }
        request.setAttribute("Medicine_manufacturers_str",medicineManufacturersStr);
        return "medicine-edit";
    }

    @RequestMapping("/buymedicines")
    public String buyMedicine(HttpServletRequest request){
        System.out.println("buyMedicines...");
//        System.out.println("页面的medicines:"+request.getParameter(medicines[0]));
        return "buymedicines";
    }
    @RequestMapping("/medicine_look")
    public String medicine_look(HttpServletRequest request,Integer id) throws ParseException {
        System.out.println("medicine_look...");
        Medicine medicineById = medicineServiceImpl.selectMedicineById(id);
        System.out.println("medicineById" +medicineById);
        request.setAttribute("medicine",medicineById);
        ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicineById.getM_manufacturer()));
        String Mau_str = oneById.getMF_name();
        request.setAttribute("Mau_str",Mau_str);

        return "medicine_look";
    }


    @RequestMapping("/medicine_addexist")
    public String medicine_addexist(HttpServletRequest request,Integer id){
        Medicine medicine = medicineServiceImpl.selectMedicineById(id);
        request.setAttribute("medicine",medicine);
        return "medicine_addexist";
    }
    @RequestMapping("/medicine_addexist_action")
    public String medicine_addexist_action(HttpServletRequest request,HttpSession session) throws ParseException {
        Medicine medicine = medicineServiceImpl.selectMedicineById(Integer.valueOf(request.getParameter("M_id")));
        DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
        Date date = fmt.parse(request.getParameter("M_date"));

        medicine.setM_date(date);
        medicine.setM_in_much(medicine.getM_in_much()+Integer.parseInt(request.getParameter("M_in_much")));
        medicine.setM_inprice((Float.valueOf(request.getParameter("M_inprice"))));
        medicineServiceImpl.editMeddicine(medicine);
//        (Account account, Date date, Date medicine_date, Float medicine_price, Integer amount
        AddMedicineDetail addMedicineDetail = new AddMedicineDetail(Uuid.getUUIDInOrderId(),Integer.valueOf(request.getParameter("M_id")),new Date(),date,Float.valueOf(request.getParameter("M_inprice")),Integer.valueOf(request.getParameter("M_in_much")));
        addMedicineDetailImpl.addMeddicineDetail(addMedicineDetail);
        return "redirect:/medicine/medicine_addexist";
    }





    @RequestMapping("/medicine_add")
    public String medicine_add(HttpServletRequest request){
        System.out.println("medicine_add...");
        List<ManuFacturer> allManuFacturer = manuFacturerServiceImpl.findAllManuFacturer();
        request.setAttribute("manufacturers",allManuFacturer);
        System.out.println("manufacturers"+allManuFacturer);
        return "medicine_add";
    }

    @RequestMapping("/MedicineAdd_action")
    public String MedicineAdd_action(HttpServletRequest request, HttpSession session) throws  ParseException {
        System.out.println("MedicineAdd_action...1");
        Medicine medicine = Fclass.F_Medicine(request,session);

        System.out.println(medicine);
        medicine.setM_id(Uuid.getUUIDInOrderId());
        System.out.println("MedicineAdd_action...1");
        medicineServiceImpl.addMedicine(medicine);
        System.out.println("MedicineAdd_action...3");
        return "redirect:/medicine/medicines";
    }

    /**
     *
     * @param request
     * @return
     * @throws ParseException
     */
    @RequestMapping("/MedicineEdit_action")
    public String MedicineEdit_action(HttpServletRequest request,HttpSession session) throws ParseException {
        Medicine medicine = Fclass.F_Medicine(request,session);
        medicineServiceImpl.editMeddicine(medicine);
        return "redirect:/medicine/medicines";
    }

    @RequestMapping("/medicine_delete")
    public String medicine_delete(Integer id) throws ParseException {
        System.out.println("medicine_delete...");
        medicineServiceImpl.deleteMedicineById(id);
        return "redirect:/medicine/medicines";
    }
    /**
     * 在销售界面请求分类的界面的具体药品列表
     * @param request
     * @return
     */
    @RequestMapping("/ReqMedDetails_action")
    public String ReqMedDetails_action(HttpServletRequest request,String M_class) {
        System.out.println("ReqMedDetails_action...");
        MClassClassify mClass = MClassClassify.valueOf(M_class);
        System.out.println("M_class"+M_class);
        request.setAttribute("M_class",Fclass.M_classToString(M_class));
        List<Medicine> medicines = medicineServiceImpl.selectMedicineByMClass(mClass);
        System.out.println("medicines:"+medicines +"size"+medicines.size());

//        完成药品厂家的字符的显示
        List<String> medicineManufacturersStr = new ArrayList<String>();
        List<Medicine> medicinelist = medicineServiceImpl.selectMedicineAll();
        for ( Medicine medicine:medicinelist
        ) {
            Integer str = Integer.valueOf(medicine.getM_manufacturer());
            System.out.println("str"+str);
            ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicine.getM_manufacturer()));
            System.out.println("oneById:"+oneById);
            System.out.println("oneById.getMF_name():"+oneById.getMF_name());
            medicineManufacturersStr.add(oneById.getMF_name());

            System.out.println("medicineManufacturersStr:"+medicineManufacturersStr);
        }
        request.setAttribute("Medicine_manufacturers_str",medicineManufacturersStr);


        request.setAttribute("medicines",medicines);
        return "buymedicines";
    }
    @InitBinder
    public void initBinder(ServletRequestDataBinder binder){
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy/MM/dd"),true));
    }

}
