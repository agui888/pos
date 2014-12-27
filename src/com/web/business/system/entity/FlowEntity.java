/**
 * author: 谢少华
 * 
 * date: 2014-07-01 09:46
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("FlowEntity")
public class FlowEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="排序")
    private BigDecimal colid;

    @Excel(Import=true, Export=true, Title="节点名称")
    @NotEmpty(message="#nodename#不能为空!")
    @Length(min=0, max=50, message="#nodename#长度需要在0和50之间.")
    private String nodename;

    @Excel(Import=true, Export=true, Title="节点状态,singleprocess单人处理,multiprocess:多人处理,end结束")
    @Length(min=0, max=20, message="#nodeflag#长度需要在0和20之间.")
    private String nodeflag;

    @Excel(Import=true, Export=true, Title="条件:0显示所有人1只限部门领导,2指定人员,3不显示任何人,4当前创建人,5当前登录用户部门所有人,6上一步处理人")
    private BigDecimal condition;

    @Excel(Import=true, Export=true, Title="指定用户")
    @Length(min=0, max=4000, message="#designateuserids#长度需要在0和4000之间.")
    private String designateuserids;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public BigDecimal getColid() { 
        return colid;
    }

    public void setColid(BigDecimal colid) { 
        this.colid = colid;
    }

    public String getNodename() { 
        return nodename;
    }

    public void setNodename(String nodename) { 
        this.nodename = nodename;
    }

    public String getNodeflag() { 
        return nodeflag;
    }

    public void setNodeflag(String nodeflag) { 
        this.nodeflag = nodeflag;
    }

    public BigDecimal getCondition() { 
        return condition;
    }

    public void setCondition(BigDecimal condition) { 
        this.condition = condition;
    }

    public String getDesignateuserids() { 
        return designateuserids;
    }

    public void setDesignateuserids(String designateuserids) { 
        this.designateuserids = designateuserids;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}