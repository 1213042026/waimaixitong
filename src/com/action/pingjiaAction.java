package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TPingjiaDAO;
import com.dao.TUserDAO;
import com.model.TPingjia;
import com.opensymphony.xwork2.ActionSupport;

public class pingjiaAction extends ActionSupport
{
	private Integer id;
	private String neirong;
	private int goodsId;
	private String shijian;
	
	private int userId;
	
	private TPingjiaDAO pingjiaDAO;
	private TUserDAO userDAO;
	
	
	public String pingjiaAdd()
	{
		TPingjia pingjia=new TPingjia();
		
		//pingjia.setId(id);
		pingjia.setGoodsId(goodsId);
		pingjia.setNeirong(neirong);
		pingjia.setShijian(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		
		pingjia.setUserId(userId);
		
		pingjiaDAO.save(pingjia);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加完毕");
		return "msg";
	}
	
	public String pingjiaAll()
	{
		String sql="from TPingjia where goodsId="+goodsId;
		List pingjiaList=pingjiaDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<pingjiaList.size();i++)
		{
			TPingjia pingjia=(TPingjia)pingjiaList.get(i);
			pingjia.setUser(userDAO.findById(pingjia.getUserId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("pingjiaList", pingjiaList);
		return ActionSupport.SUCCESS;
	}
	
	public String pingjiaMana()
	{
		String sql="from TPingjia where goodsId="+goodsId;
		List pingjiaList=pingjiaDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<pingjiaList.size();i++)
		{
			TPingjia pingjia=(TPingjia)pingjiaList.get(i);
			pingjia.setUser(userDAO.findById(pingjia.getUserId()));
		}
		
		System.out.println(pingjiaList.size()+"^^");
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("pingjiaList", pingjiaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String pingjiaDel()
	{
		TPingjia pingjia=pingjiaDAO.findById(id);
		pingjiaDAO.delete(pingjia);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除完毕");
		return "msg";
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getNeirong()
	{
		return neirong;
	}

	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}

	

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public TUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public TPingjiaDAO getPingjiaDAO()
	{
		return pingjiaDAO;
	}

	public void setPingjiaDAO(TPingjiaDAO pingjiaDAO)
	{
		this.pingjiaDAO = pingjiaDAO;
	}
	
}
