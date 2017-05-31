<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function dianpu_del(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/dianpu_del.action?id="+id;
               }
           }
           
           function dianpu_shenhe(id)
           {
               if(confirm('您确定审核吗？'))
               {
                   var strUrl = "<%=path %>/dianpu_shenhe.action?id="+id;
                   var ret = window.showModalDialog(strUrl,"","dialogWidth:300px; dialogHeight:120px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
                   window.location.reload();
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="14" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="10%">账号</td>
					<td width="10%">密码</td>
					<td width="10%">餐馆名称</td>
					
					<td width="10%">主营菜品</td>
					<td width="10%">联系人</td>
					<td width="10%">联系电话</td>
					<td width="10%">状态</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.dianpuList" id="dianpu" status="sta">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#sta.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#dianpu.loginname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#dianpu.loginpw"/>
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
						<s:property value="#dianpu.tai"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="dianpu_del(<s:property value="#dianpu.id"/>)" class="pn-loperator">删除</a>
						<a href="#" onclick="dianpu_shenhe(<s:property value="#dianpu.id"/>)" class="pn-loperator">审核</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
