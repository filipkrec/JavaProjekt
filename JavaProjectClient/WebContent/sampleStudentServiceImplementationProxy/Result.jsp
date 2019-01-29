<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleStudentServiceImplementationProxyid" scope="session" class="com.javax.services.StudentServiceImplementationProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleStudentServiceImplementationProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleStudentServiceImplementationProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleStudentServiceImplementationProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.javax.services.StudentServiceImplementation getStudentServiceImplementation10mtemp = sampleStudentServiceImplementationProxyid.getStudentServiceImplementation();
if(getStudentServiceImplementation10mtemp == null){
%>
<%=getStudentServiceImplementation10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        com.javax.beans.Student[] getAllStudents15mtemp = sampleStudentServiceImplementationProxyid.getAllStudents();
if(getAllStudents15mtemp == null){
%>
<%=getAllStudents15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getAllStudents15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getAllStudents15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String id_1id=  request.getParameter("id27");
        int id_1idTemp  = Integer.parseInt(id_1id);
        com.javax.beans.Student getStudent18mtemp = sampleStudentServiceImplementationProxyid.getStudent(id_1idTemp);
if(getStudent18mtemp == null){
%>
<%=getStudent18mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">result:</TD>
<TD>
<%
if(getStudent18mtemp != null){
%>
<%=getStudent18mtemp.getResult()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">studentName:</TD>
<TD>
<%
if(getStudent18mtemp != null){
java.lang.String typestudentName23 = getStudent18mtemp.getStudentName();
        String tempResultstudentName23 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestudentName23));
        %>
        <%= tempResultstudentName23 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getStudent18mtemp != null){
%>
<%=getStudent18mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 29:
        gotMethod = true;
        String result_3id=  request.getParameter("result34");
        int result_3idTemp  = Integer.parseInt(result_3id);
        String studentName_4id=  request.getParameter("studentName36");
            java.lang.String studentName_4idTemp = null;
        if(!studentName_4id.equals("")){
         studentName_4idTemp  = studentName_4id;
        }
        String id_5id=  request.getParameter("id38");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="com1javax1beans1Student_2id" scope="session" class="com.javax.beans.Student" />
        <%
        com1javax1beans1Student_2id.setResult(result_3idTemp);
        com1javax1beans1Student_2id.setStudentName(studentName_4idTemp);
        com1javax1beans1Student_2id.setId(id_5idTemp);
        boolean addStudent29mtemp = sampleStudentServiceImplementationProxyid.addStudent(com1javax1beans1Student_2id);
        String tempResultreturnp30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addStudent29mtemp));
        %>
        <%= tempResultreturnp30 %>
        <%
break;
case 40:
        gotMethod = true;
        String id_6id=  request.getParameter("id43");
        int id_6idTemp  = Integer.parseInt(id_6id);
        boolean deleteStudent40mtemp = sampleStudentServiceImplementationProxyid.deleteStudent(id_6idTemp);
        String tempResultreturnp41 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteStudent40mtemp));
        %>
        <%= tempResultreturnp41 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>