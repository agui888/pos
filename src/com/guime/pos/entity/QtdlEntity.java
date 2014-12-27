/**
 * author: 谢少华
 * 
 * date: 2014-12-09 11:55
 */
package com.guime.pos.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("QtdlEntity")
public class QtdlEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private String id;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    @Excel(Import=true, Export=true, Title="收款员编码")
    @NotEmpty(message="#skyid#收款员编码不能为空!")
    @Length(min=0, max=10, message="#skyid#收款员编码长度需要在0和10之间.")
    private String skyid;

    @Excel(Import=true, Export=true, Title="收款员姓名")
    @NotEmpty(message="#skyname#收款员姓名不能为空!")
    @Length(min=0, max=20, message="#skyname#收款员姓名长度需要在0和20之间.")
    private String skyname;

    @Excel(Import=true, Export=true, Title="收款员工作门店")
    @NotEmpty(message="#skyposin#收款员工作门店不能为空!")
    @Length(min=0, max=10, message="#skyposin#收款员工作门店长度需要在0和10之间.")
    private String skyposin;

    @Excel(Import=true, Export=true, Title="密码")
    @NotEmpty(message="#password#密码不能为空!")
    @Length(min=0, max=10, message="#password#密码长度需要在0和10之间.")
    private String password;

    @Excel(Import=true, Export=true, Title="地址")
    @NotEmpty(message="#address#地址不能为空!")
    @Length(min=0, max=40, message="#address#地址长度需要在0和40之间.")
    private String address;

    @Excel(Import=true, Export=true, Title="邮编")
    @Length(min=0, max=10, message="#postal#邮编长度需要在0和10之间.")
    private String postal;

    @Excel(Import=true, Export=true, Title="电话")
    @Length(min=0, max=20, message="#phone#电话长度需要在0和20之间.")
    private String phone;

    @Excel(Import=true, Export=true, Title="手机")
    @Length(min=0, max=20, message="#sphone#手机长度需要在0和20之间.")
    private String sphone;

    @Excel(Import=true, Export=true)
    @Length(min=0, max=20, message="#skybp#长度需要在0和20之间.")
    private String skybp;

    @Excel(Import=true, Export=true, Title="身份证号码")
    @Length(min=0, max=18, message="#card_id#身份证号码长度需要在0和18之间.")
    private String card_id;

    @Excel(Import=true, Export=true)
    private Date bdate;

    @Excel(Import=true, Export=true)
    private Date sdate;

    @Excel(Import=true, Export=true)
    private BigDecimal crate;

    @Excel(Import=true, Export=true)
    private String ctype;

    @Excel(Import=true, Export=true, Title="是否能显示查看销售")
    private String yn_disp;

    @Excel(Import=true, Export=true, Title="是否能打折")
    private String yn_disc;

    @Excel(Import=true, Export=true, Title="是否能退货")
    private String yn_ret;

    @Excel(Import=true, Export=true, Title="是否能取消交易")
    private String yn_del;

    @Excel(Import=true, Export=true)
    @Length(min=0, max=50, message="#photo#长度需要在0和50之间.")
    private String photo;

    @Excel(Import=true, Export=true)
    @Length(min=0, max=40, message="#commnts#长度需要在0和40之间.")
    private String commnts;

    @Excel(Import=true, Export=true)
    @Length(min=0, max=10, message="#skybm#长度需要在0和10之间.")
    private String skybm;

    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getSkyid() { 
        return skyid;
    }

    public void setSkyid(String skyid) { 
        this.skyid = skyid;
    }

    public String getSkyname() { 
        return skyname;
    }

    public void setSkyname(String skyname) { 
        this.skyname = skyname;
    }

    public String getSkyposin() { 
        return skyposin;
    }

    public void setSkyposin(String skyposin) { 
        this.skyposin = skyposin;
    }

    public String getPassword() { 
        return password;
    }

    public void setPassword(String password) { 
        this.password = password;
    }

    public String getAddress() { 
        return address;
    }

    public void setAddress(String address) { 
        this.address = address;
    }

    public String getPostal() { 
        return postal;
    }

    public void setPostal(String postal) { 
        this.postal = postal;
    }

    public String getPhone() { 
        return phone;
    }

    public void setPhone(String phone) { 
        this.phone = phone;
    }

    public String getSphone() { 
        return sphone;
    }

    public void setSphone(String sphone) { 
        this.sphone = sphone;
    }

    public String getSkybp() { 
        return skybp;
    }

    public void setSkybp(String skybp) { 
        this.skybp = skybp;
    }

    public String getCard_id() { 
        return card_id;
    }

    public void setCard_id(String card_id) { 
        this.card_id = card_id;
    }

    public Date getBdate() { 
        return bdate;
    }

    public void setBdate(Date bdate) { 
        this.bdate = bdate;
    }

    public Date getSdate() { 
        return sdate;
    }

    public void setSdate(Date sdate) { 
        this.sdate = sdate;
    }

    public BigDecimal getCrate() { 
        return crate;
    }

    public void setCrate(BigDecimal crate) { 
        this.crate = crate;
    }

    public String getCtype() { 
        return ctype;
    }

    public void setCtype(String ctype) { 
        this.ctype = ctype;
    }

    public String getYn_disp() { 
        return yn_disp;
    }

    public void setYn_disp(String yn_disp) { 
        this.yn_disp = yn_disp;
    }

    public String getYn_disc() { 
        return yn_disc;
    }

    public void setYn_disc(String yn_disc) { 
        this.yn_disc = yn_disc;
    }

    public String getYn_ret() { 
        return yn_ret;
    }

    public void setYn_ret(String yn_ret) { 
        this.yn_ret = yn_ret;
    }

    public String getYn_del() { 
        return yn_del;
    }

    public void setYn_del(String yn_del) { 
        this.yn_del = yn_del;
    }

    public String getPhoto() { 
        return photo;
    }

    public void setPhoto(String photo) { 
        this.photo = photo;
    }

    public String getCommnts() { 
        return commnts;
    }

    public void setCommnts(String commnts) { 
        this.commnts = commnts;
    }

    public String getSkybm() { 
        return skybm;
    }

    public void setSkybm(String skybm) { 
        this.skybm = skybm;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}