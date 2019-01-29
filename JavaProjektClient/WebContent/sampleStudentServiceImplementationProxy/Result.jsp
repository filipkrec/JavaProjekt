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
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        boolean deleteStudent15mtemp = sampleStudentServiceImplementationProxyid.deleteStudent(id_1idTemp);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteStudent15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;
case 20:
        gotMethod = true;
        String id_2id=  request.getParameter("id29");
        int id_2idTemp  = Integer.parseInt(id_2id);
        com.javax.beans.Student getStudent20mtemp = sampleStudentServiceImplementationProxyid.getStudent(id_2idTemp);
if(getStudent20mtemp == null){
%>
<%=getStudent20mtemp %>
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
if(getStudent20mtemp != null){
%>
<%=getStudent20mtemp.getResult()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">studentName:</TD>
<TD>
<%
if(getStudent20mtemp != null){
java.lang.String typestudentName25 = getStudent20mtemp.getStudentName();
        String tempResultstudentName25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestudentName25));
        %>
        <%= tempResultstudentName25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getStudent20mtemp != null){
%>
<%=getStudent20mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 31:
        gotMethod = true;
        String result_4id=  request.getParameter("result36");
        int result_4idTemp  = Integer.parseInt(result_4id);
        String studentName_5id=  request.getParameter("studentName38");
            java.lang.String studentName_5idTemp = null;
        if(!studentName_5id.equals("")){
         studentName_5idTemp  = studentName_5id;
        }
        String id_6id=  request.getParameter("id40");
        int id_6idTemp  = Integer.parseInt(id_6id);
        %>
        <jsp:useBean id="com1javax1beans1Student_3id" scope="session" class="com.javax.beans.Student" />
        <%
        com1javax1beans1Student_3id.setResult(result_4idTemp);
        com1javax1beans1Student_3id.setStudentName(studentName_5idTemp);
        com1javax1beans1Student_3id.setId(id_6idTemp);
        boolean addStudent31mtemp = sampleStudentServiceImplementationProxyid.addStudent(com1javax1beans1Student_3id);
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addStudent31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
break;
case 42:
        gotMethod = true;
        com.javax.beans.Student[] getAllStudents42mtemp = sampleStudentServiceImplementationProxyid.getAllStudents();
if(getAllStudents42mtemp == null){
%>
<%=getAllStudents42mtemp %>
<%
}else{
        String tempreturnp43 = null;
        if(getAllStudents42mtemp != null){
        java.util.List listreturnp43= java.util.Arrays.asList(getAllStudents42mtemp);
        tempreturnp43 = listreturnp43.toString();
        }
        %>
        <%=tempreturnp43%>
        <%
}
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