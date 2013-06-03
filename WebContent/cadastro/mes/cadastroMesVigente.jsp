<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/ProjetoPI/bootstrap/css/bootstrap.css"/>
<title>Cadastro de Mes Vigente</title>
</head>


<body>
<%@ page  language="java" import="java.util.*,java.text.*"%>
<%!
public int nullIntconv(String inv)
{   
    int conv=0;
        
    try{
        conv=Integer.parseInt(inv);
    }
    catch(Exception e)
    {}
    return conv;
}
%>
<%
 int iYear=nullIntconv(request.getParameter("iYear"));
 int iMonth=nullIntconv(request.getParameter("iMonth"));

 Calendar ca = new GregorianCalendar();
 int iTDay=ca.get(Calendar.DATE);
 int iTYear=ca.get(Calendar.YEAR);
 int iTMonth=ca.get(Calendar.MONTH);

 if(iYear==0)
 {
      iYear=iTYear;
      iMonth=iTMonth;
 }

 GregorianCalendar cal = new GregorianCalendar (iYear, iMonth, 1); 

 int days=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
 int weekStartDay=cal.get(Calendar.DAY_OF_WEEK);
 
 cal = new GregorianCalendar (iYear, iMonth, days); 
 int iTotalweeks=cal.get(Calendar.WEEK_OF_MONTH);
   
%>

<script>
function goTo()
{
  document.frm.submit()
}
</script>



<form name="frm" method="post">
<div align="center">
<h1>Cadastro de Mês Vigente</h1>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="45%">&nbsp;</td>
    <td width="30%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="6%">Ano</td>
        <td width="7%">
        <select name="iYear" onChange="goTo()">
        <%
        // start year and end year in combo box to change year in calendar
        for(int iy=iTYear-0;iy<=iTYear+0;iy++)
        {
          if(iy==iYear)
          {
            %>
          <option value="<%=iy%>" selected="selected"><%=iy%></option>
          <%
          }
          else
          {
            %>
          <option value="<%=iy%>"><%=iy%></option>
          <%
          }
        }
       %>
        </select></td>
        <td width="73%" align="center" style="color:#4E96DE"><h3><%=new SimpleDateFormat("MMMM").format(new Date(2013,iMonth,01))%> <%=iYear%></h3></td>
        <td width="6%">Mês</td>
        <td width="8%">
        <select name="iMonth" onChange="goTo()">
        <%
        // print month in combo box to change month in calendar
        for(int im=0;im<=11;im++)
        {
          if(im==iMonth)
          {
         %>
          <option value="<%=im%>" selected="selected"><%=new SimpleDateFormat("MMMM").format(new Date(2013,im,01))%></option>
          <%
          }
          else
          {
            %>
          <option value="<%=im%>"><%=new SimpleDateFormat("MMMM").format(new Date(2008,im,01))%></option>
          <%
          }
        }
       %>
        </select></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table align="center" border="1" cellpadding="3" cellspacing="0" width="100%">
      <tbody>
        <tr>
          <th style="color:#4E96DE">Dom</th>
          <th>Seg</th>
          <th>Ter</th>
          <th>Qua</th>
          <th>Qui</th>
          <th>Sex</th>
          <th style="color:#4E96DE">Sab</th>
        </tr>
        <%
        int cnt =1;
        for(int i=1;i<=iTotalweeks;i++)
        {
        %>
        <tr>
          <% 
            for(int j=1;j<=7;j++)
            {
                if(cnt<weekStartDay || (cnt-weekStartDay+1)>days)
                {
                 %>
                <td align="center" height="35" class="dsb">&nbsp;</td>
               <% 
                }
                else
                {
                 %>
                <td align="center" height="35" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td>
               <% 
                }
                cnt++;
              }
            %>
        </tr>
        <% 
        }
        %>
      </tbody>
    </table></td>
  </tr>
</table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<input type="submit" name="selecionar" value="Selecionar este mês"><p>
<a href="/ProjetoPI/paginaInicial/">Voltar a pagina inicial </a>
</div>
</form>
</body>
</html>
