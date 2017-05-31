<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
    <link href="<%=path %>/css/qiantai.css" rel="stylesheet" type="text/css" media="screen" />
    
    <script language="JavaScript" type="text/javascript">
        function goodsByDianpu(dianpuId)
	    {
	        var url="<%=path %>/goodsByDianpu.action?dianpuId="+dianpuId;
	        window.location.href=url;
	    }  
    </script>
    
  </head>
  
  <body>
	<jsp:include flush="true" page="/qiantai/inc/top.jsp"></jsp:include>
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<!-- <div class="post">
						<h2 class="title"><a href="#">企业介绍</a></h2>
						<p class="meta">我们企业在青岛市</p>
						<div class="entry">
							<p>订单嘎嘎嘎嘎嘎嘎嘎嘎嘎个te designed by FreeCssTemplree template is rse, so you’re prd you keep the links in the footer intact. Aside from that, have fun wi</p>
							<p>Sibus semper urna. Pellentesque ornare, orci in felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.</p>
						</div>
					</div> -->
					<div class="post">
						<!-- <h2 class="title"><a href="#">餐馆注册</a></h2> -->
						<div class="entry">
						    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
								<tr bgcolor="#E7E7E7">
									<td height="14" colspan="14" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
								</tr>
								<tr align="center" bgcolor="#FAFAF1" height="22">
									<td width="5%">序号</td>
									<td width="10%">餐馆名称</td>
									
									<td width="10%">主营菜品</td>
									<td width="10%">联系人</td>
									<td width="10%">联系电话</td>
									<td width="10%">操作</td>
						        </tr>	
								<s:iterator value="#request.dianpuList" id="dianpu" status="sta">
								<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#sta.index+1"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#dianpu.mingcheng"/>
									</td>
									
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#dianpu.zhuying"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#dianpu.lianxiren"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<s:property value="#dianpu.dianhua"/>
									</td>
									<td bgcolor="#FFFFFF" align="center">
										<input type="button" value="点击进入" onclick="goodsByDianpu(<s:property value="#dianpu.id"/>)"/>
									</td>
								</tr>
								</s:iterator>
							</table>
						</div>
					</div>
				    <div style="clear: both;">&nbsp;</div>
		        </div>
				<jsp:include flush="true" page="/qiantai/inc/right.jsp"></jsp:include>
				<div style="clear: both;">&nbsp;</div>	
		    </div>
		</div>
	</div>
	
	
	
	<div id="footer-wrapper">
		<div id="footer">
			<p>Copyright (c) 2016 Sitename.com. All rights reserved. Design by <a href="<%=path %>/login.jsp">系统管理员登陆</a>.</p>
		</div>
	</div>
  </body>
</html>
