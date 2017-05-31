package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TDianpuDAO;
import com.model.TDianpu;
import com.opensymphony.xwork2.ActionSupport;

public class dianpuAction extends ActionSupport
{
	private Integer id;
	private String loginname;
	private String loginpw;
	private String mingcheng;
	
	private String zhuying;
	private String lianxiren;
	private String dianhua;
	
	private String message;
	private String path;
	
	private TDianpuDAO dianpuDAO;
	
	
	public String dianpu_zhuce()
	{
		TDianpu dianpu=new TDianpu();

		dianpu.setLoginname(loginname);
		dianpu.setLoginpw(loginpw);
		dianpu.setMingcheng(mingcheng);
		dianpu.setZhuying(zhuying);
		
		dianpu.setLianxiren(lianxiren);
		dianpu.setDianhua(dianhua);
		dianpu.setTai("待审核");
		dianpu.setDel("no");
		
		dianpuDAO.save(dianpu);

		
		this.setMessage("注册完毕，等待管理员审核");
		this.setPath("qiantai/default.jsp");
		return "succeed";
	}
	
	public String dianpu_mana_daishen()
	{
		String sql="from TDianpu where del='no' and tai='待审核'";
		List dianpuList=dianpuDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("dianpuList", dianpuList);
		return ActionSupport.SUCCESS;
	}
	
	public String dianpu_mana_yishen()
	{
		String sql="from TDianpu where del='no' and tai='已审核'";
		List dianpuList=dianpuDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("dianpuList", dianpuList);
		return ActionSupport.SUCCESS;
	}
	
	public String dianpu_del()
	{
		TDianpu dianpu=dianpuDAO.findById(id);
		dianpuDAO.delete(dianpu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "操作成功");
		return "msg";
	}
	
	public String dianpu_shenhe()
	{
		TDianpu dianpu=dianpuDAO.findById(id);
		dianpu.setTai("已审核");
		dianpuDAO.attachDirty(dianpu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "操作成功");
		return "msg";
	}
	
	
	public String dianpuAll()
	{
		String sql="from TDianpu where del='no' and tai='已审核'";
		List dianpuList=dianpuDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("dianpuList", dianpuList);
		return ActionSupport.SUCCESS;
	}

	public String getDianhua()
	{
		return dianhua;
	}



	public void setDianhua(String dianhua)
	{
		this.dianhua = dianhua;
	}



	public TDianpuDAO getDianpuDAO()
	{
		return dianpuDAO;
	}



	public void setDianpuDAO(TDianpuDAO dianpuDAO)
	{
		this.dianpuDAO = dianpuDAO;
	}



	public Integer getId()
	{
		return id;
	}



	public void setId(Integer id)
	{
		this.id = id;
	}



	public String getLianxiren()
	{
		return lianxiren;
	}



	public void setLianxiren(String lianxiren)
	{
		this.lianxiren = lianxiren;
	}



	public String getLoginname()
	{
		return loginname;
	}



	public void setLoginname(String loginname)
	{
		this.loginname = loginname;
	}



	public String getLoginpw()
	{
		return loginpw;
	}



	public void setLoginpw(String loginpw)
	{
		this.loginpw = loginpw;
	}



	public String getMessage()
	{
		return message;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}



	public String getMingcheng()
	{
		return mingcheng;
	}



	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}



	public String getPath()
	{
		return path;
	}



	public void setPath(String path)
	{
		this.path = path;
	}



	public String getZhuying()
	{
		return zhuying;
	}



	public void setZhuying(String zhuying)
	{
		this.zhuying = zhuying;
	}
	
}
