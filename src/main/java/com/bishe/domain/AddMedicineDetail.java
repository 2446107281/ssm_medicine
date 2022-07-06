package com.bishe.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 添加药品的信息类(进货单)
 */
public class AddMedicineDetail implements Serializable {
   private Integer AddMedicineDetail_id;
   private  Integer account_id;
   private Date date;
   private Date medicine_date;
   private Float medicine_price;
   private Integer amount;

   public AddMedicineDetail() {
   }

   public AddMedicineDetail(Integer addMedicineDetail_id, Integer account_id, Date date, Date medicine_date, Float medicine_price, Integer amount) {
      AddMedicineDetail_id = addMedicineDetail_id;
      this.account_id = account_id;
      this.date = date;
      this.medicine_date = medicine_date;
      this.medicine_price = medicine_price;
      this.amount = amount;
   }

   @Override
   public String toString() {
      return "AddMedicineDetail{" +
              "AddMedicineDetail_id=" + AddMedicineDetail_id +
              ", account_id=" + account_id +
              ", date=" + date +
              ", medicine_date=" + medicine_date +
              ", medicine_price=" + medicine_price +
              ", amount=" + amount +
              '}';
   }

   public Integer getAddMedicineDetail_id() {
      return AddMedicineDetail_id;
   }

   public void setAddMedicineDetail_id(Integer addMedicineDetail_id) {
      AddMedicineDetail_id = addMedicineDetail_id;
   }

   public Integer getAccount_id() {
      return account_id;
   }

   public void setAccount_id(Integer account_id) {
      this.account_id = account_id;
   }

   public Date getDate() {
      return date;
   }

   public void setDate(Date date) {
      this.date = date;
   }

   public Date getMedicine_date() {
      return medicine_date;
   }

   public void setMedicine_date(Date medicine_date) {
      this.medicine_date = medicine_date;
   }

   public Float getMedicine_price() {
      return medicine_price;
   }

   public void setMedicine_price(Float medicine_price) {
      this.medicine_price = medicine_price;
   }

   public Integer getAmount() {
      return amount;
   }

   public void setAmount(Integer amount) {
      this.amount = amount;
   }
}
