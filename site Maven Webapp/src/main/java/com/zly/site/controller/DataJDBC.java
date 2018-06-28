package com.zly.site.controller;

import java.sql.DriverManager;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;

import com.sun.tools.classfile.StackMap_attribute.stack_map_frame;

public class DataJDBC {
	public static void main(String[] args) throws Exception {
        Connection conn = null;
        String sql1,sql2,sql3;
        // MySQL的JDBC URL编写方式：jdbc:mysql://主机名称：连接端口/数据库的名称?参数=值
        // 避免中文乱码要指定useUnicode和characterEncoding
        // 执行数据库操作之前要在数据库管理系统上创建一个数据库，名字自己定，
        // 下面语句之前就要先创建javademo数据库
        String url = "jdbc:mysql://localhost:3306/company?"
                + "user=root&password=666666&useUnicode=true&characterEncoding=UTF8";

        try {
            // 之所以要使用下面这条语句，是因为要使用MySQL的驱动，所以我们要把它驱动起来，
            // 可以通过Class.forName把它加载进去，也可以通过初始化来驱动起来，下面三种形式都可以
            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动
            // or:
            // com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
            // or：
            // new com.mysql.jdbc.Driver();

            //System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = DriverManager.getConnection(url);
            // Statement里面带有很多方法，比如executeUpdate可以实现插入，更新和删除等
            Statement stmt = conn.createStatement();
            /*sql1 = "SELECT * from login t WHERE t.sip in(SELECT a.ip from ip_yf a WHERE a.level=1) GROUP BY t.`user`,t.sip,t.dip,t.proto;";
            sql2 = "SELECT * from login t WHERE t.sip in(SELECT a.ip from ip_yf a WHERE a.level=2) GROUP BY t.`user`,t.sip,t.dip,t.proto;;";
            sql3 = "SELECT * from login t WHERE t.sip in(SELECT a.ip from ip_yf a WHERE a.level=3) GROUP BY t.`user`,t.sip,t.dip,t.proto;;";
            ResultSet result1=stmt.executeQuery(sql1);
            StringBuffer s=new StringBuffer();
            s.append("{");
            //------------------封装数据一----------------------------
            s.append("\"dataYF1\":[");
            while(result1.next()){
            	s.append("[\"研发一组\",");
            	s.append("\""+result1.getString("user")+"\",");
            	s.append("\""+result1.getString("sip")+"\",");
            	s.append("\""+result1.getString("proto")+"\",");
            	String ss="";
            	if(result1.getString("proto").equals("ftp")){
            		ss="文件传输";
            	}else if(result1.getString("proto").equals("mongodb")){
            		ss="mongodb数据库";
            	}else if(result1.getString("proto").equals("mysql")){
            		ss="mysql数据库";
            	}else if(result1.getString("proto").equals("postgresql")){
            		ss="postgresql数据库";
            	}else if(result1.getString("proto").equals("sftp")){
            		ss="安全文件传输";
            	}else if(result1.getString("proto").equals("ssh")){
            		ss="远程登陆";
            	}else if(result1.getString("proto").equals("tds")){
            		ss="sqlserver数据库";
            	}
            	s.append("\""+ss+"\",");
            	s.append("\""+result1.getString("dip")+"\"");
            	s.append("],");
            }
            s.append("]");
            s.delete(s.length()-2,s.length()-1);
            //------------------------封装数据二-------------------------------
            ResultSet result2=stmt.executeQuery(sql2);
            s.append(",\"dataYF2\":[");
            while(result2.next()){
            	s.append("[\"研发二组\",");
            	s.append("\""+result2.getString("user")+"\",");
            	s.append("\""+result2.getString("sip")+"\",");
            	s.append("\""+result2.getString("proto")+"\",");
            	String ss="";
            	if(result2.getString("proto").equals("ftp")){
            		ss="文件传输";
            	}else if(result2.getString("proto").equals("mongodb")){
            		ss="mongodb数据库";
            	}else if(result2.getString("proto").equals("mysql")){
            		ss="mysql数据库";
            	}else if(result2.getString("proto").equals("postgresql")){
            		ss="postgresql数据库";
            	}else if(result2.getString("proto").equals("sftp")){
            		ss="安全文件传输";
            	}else if(result2.getString("proto").equals("ssh")){
            		ss="远程登陆";
            	}else if(result2.getString("proto").equals("tds")){
            		ss="sqlserver数据库";
            	}
            	s.append("\""+ss+"\",");
            	s.append("\""+result2.getString("dip")+"\"");
            	s.append("],");
            }
            s.append("]");
            s.delete(s.length()-2,s.length()-1);
            //----------------------------封装数据三----------------------------------
            ResultSet result3=stmt.executeQuery(sql3);
            s.append(",\"dataYF3\":[");
            while(result3.next()){
            	s.append("[\"研发三组\",");
            	s.append("\""+result3.getString("user")+"\",");
            	s.append("\""+result3.getString("sip")+"\",");
            	s.append("\""+result3.getString("proto")+"\",");
            	String ss="";
            	if(result3.getString("proto").equals("ftp")){
            		ss="文件传输";
            	}else if(result3.getString("proto").equals("mongodb")){
            		ss="mongodb数据库";
            	}else if(result3.getString("proto").equals("mysql")){
            		ss="mysql数据库";
            	}else if(result3.getString("proto").equals("postgresql")){
            		ss="postgresql数据库";
            	}else if(result3.getString("proto").equals("sftp")){
            		ss="安全文件传输";
            	}else if(result3.getString("proto").equals("ssh")){
            		ss="远程登陆";
            	}else if(result3.getString("proto").equals("tds")){
            		ss="sqlserver数据库";
            	}
            	s.append("\""+ss+"\",");
            	s.append("\""+result3.getString("dip")+"\"");
            	s.append("],");
            }
            s.append("]");
            s.delete(s.length()-2,s.length()-1);
            //---------------------结束封装------------------------
            s.append("}");
           System.out.println(s);*/
           /* String sql4;
            sql4="select * from ip_yf t where t.level=3";
            ResultSet result4=stmt.executeQuery(sql4);
            StringBuffer syf1=new StringBuffer();
            syf1.append("[");
            while(result4.next()){
            	syf1.append("""+result4.getString("ip")+"",");
            }
            syf1.append("]");
            syf1.delete(syf1.length()-2,syf1.length()-1);
            System.out.println(syf1);*/
            /*String sqlliuliang="SELECT left(t.stime,10),SUM(t.uplink_length)/1024/1024/1024 uplink,SUM(t.downlink_length)/1024/1024/1024 down from tcplog t GROUP BY left(t.stime,10);";
            ResultSet result_liuliang=stmt.executeQuery(sqlliuliang);
            StringBuffer s1=new StringBuffer();
            StringBuffer s2=new StringBuffer();
            s1.append("[");
            s2.append("[");
            while(result_liuliang.next()){
            	s1.append(result_liuliang.getString("uplink")+",");
            	s2.append(result_liuliang.getString("down")+",");
            }
            s1.append("]");
            s2.append("]");
            s1.delete(s1.length()-2, s1.length()-1);
            s2.delete(s2.length()-2, s2.length()-1);
            System.out.println(s1);
            System.out.println(s2);*/
           /* String sqlllDay="SELECT left(t.stime,13) time,SUM(t.uplink_length)/1024/1024/1024 uplink,SUM(t.downlink_length)/1024/1024/1024 down from tcplog t GROUP BY left(t.stime,13);";
            ResultSet result_Day=stmt.executeQuery(sqlllDay);
            StringBuffer s1=new StringBuffer();
            StringBuffer s2=new StringBuffer();
            StringBuffer s3=new StringBuffer();
            s1.append("[");
            s2.append("[");
            s3.append("[");
            while(result_Day.next()){
            	//时间
            	s1.append("""+result_Day.getString("time")+"",");
            	//上传
            	s2.append(result_Day.getString("uplink")+",");
            	//下载
            	s3.append(result_Day.getString("down")+",");
            }
            s1.append("]");
            s2.append("]");
            s3.append("]");
            s1.delete(s1.length()-2, s1.length()-1);
            s2.delete(s2.length()-2, s2.length()-1);
            s3.delete(s3.length()-2, s3.length()-1);
            System.out.println(s3);*/
            /*String sqlPort="SELECT * from login t GROUP BY t.dport;";
            ResultSet resultSet=stmt.executeQuery(sqlPort);
            StringBuffer sPort=new StringBuffer();
            sPort.append("[");
            while(resultSet.next()){
            	sPort.append("""+resultSet.getString("dport")+"",");
            }
            sPort.append("]");
            sPort.delete(sPort.length()-2, sPort.length()-1);
            System.out.println(sPort);*/
           /* String sqlPort="SELECT b.ipID,b.portID,COUNT(*) count from(SELECT a.dip,a.dport,a.ipID,ttt.portID from(SELECT t.dip,t.dport,tt.ipID from login t LEFT JOIN ip_all tt on t.dip=tt.dip)a LEFT JOIN port_all ttt ON a.dport=ttt.dport)b GROUP BY b.ipID,b.portID;";
            ResultSet result=stmt.executeQuery(sqlPort);
            StringBuffer sPort=new StringBuffer();
            sPort.append("[");
	         for(int i=0;i<=31;i++){
	        	   for(int j=0;j<=5;j++){
	        		   System.out.println("当前执行第"+i+"行，第"+j+"列!");
	        		   StringBuffer sqlExt=new StringBuffer();
	         		   sqlExt.append("SELECT count from(SELECT b.ipID,b.portID,COUNT(*) count from(SELECT a.dip,a.dport,a.ipID,ttt.portID from(SELECT t.dip,t.dport,tt.ipID from login t LEFT JOIN ip_all tt on t.dip=tt.dip)a LEFT JOIN port_all ttt ON a.dport=ttt.dport)b GROUP BY b.ipID,b.portID)m ");
	        		   sqlExt.append("WHERE m.ipID="+i+" AND m.portID="+j+";");
	        		   String sqlCount=sqlExt.toString();
	        		   ResultSet resultCount=stmt.executeQuery(sqlCount);
	        		   int count_=0;
	        		   while(resultCount.next()){
        				   count_=Integer.valueOf(resultCount.getString("count"));
	        		   }
	        		   sPort.append("["+j+","+i+","+count_+"],");
	        		   System.out.println(sPort);
	        	   }
	         }
            sPort.append("]");
            sPort.delete(sPort.length()-2, sPort.length()-1);
            System.out.println(sPort);*/
            /*StringBuffer strPortDay=new StringBuffer();
            strPortDay.append("[");
            String sqlPortDay="SELECT left(t.time,10),t.dport,COUNT(*) count from login t WHERE t.dport=5432 GROUP BY left(t.time,10),t.dport;";
            ResultSet resultPostDay=stmt.executeQuery(sqlPortDay);
            while(resultPostDay.next()){
            	strPortDay.append(resultPostDay.getString("count")+",");
            }
            strPortDay.append("]");
            strPortDay.delete(strPortDay.length()-2, strPortDay.length()-1);
            System.out.println(strPortDay);*/
            /*String ips[]={"10.5.71.60","10.50.50.26","10.50.50.28","10.50.50.29","10.50.50.30","10.50.50.31","10.50.50.33","10.50.50.34","10.50.50.35","10.50.50.36","10.50.50.37","10.50.50.38","10.50.50.39","10.50.50.40","10.50.50.41","10.50.50.42","10.50.50.43","10.50.50.44","10.50.50.45","10.50.50.46","10.50.50.47","10.50.50.48","10.50.50.49","10.63.120.70","10.7.133.15","10.7.133.16","10.7.133.17","10.7.133.18","10.7.133.19","10.7.133.20","10.7.133.21","10.7.133.22"};
            String dates[]={"2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10",
		            		"2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20",
		            		"2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28","2017-11-29","2017-11-30"};
            for(int i=0;i<32;i++){
            	//去ip
            	String ip=ips[i];
            	StringBuffer str=new StringBuffer();
            	str.append("[");
            	//循环日期
            	for(int j=0;j<dates.length;j++){
            		//构造sql
            		String sqlip="SELECT left(t.time,10) time,COUNT(*) count from login t WHERE t.dip=""+ips[i]+"" AND left(t.time,10)=""+dates[j]+"" GROUP BY left(t.time,10);";
                	ResultSet resultSet=stmt.executeQuery(sqlip);
                	if(resultSet.next()){
            			str.append(resultSet.getString("count")+",");
                	}else{
                		str.append(0+",");
                	}
            	}
            	str.append("]");
            	str.delete(str.length()-2, str.length()-1);
            	System.out.println("当前ip为："+ips[i]+"###值为："+str.toString());
            }*/
           /* String sql="SELECT *,COUNT(*) FROM login t WHERE t.dip="10.50.50.44" AND left(t.time,10)="2017-11-03" GROUP BY t.sip,t.state;";
            StringBuffer sstr=new StringBuffer();
            sstr.append("[");
            ResultSet resultip=stmt.executeQuery(sql);
            while(resultip.next()){
            	sstr.append("""+resultip.getString("sip")+"",");
            }
            sstr.append("]");
            sstr.delete(sstr.length()-2, sstr.length()-1);
            System.out.println(sstr.toString());*/
           /* String sql="SELECT *,SUM(t.uplink_length) uplink,SUM(t.downlink_length) downlink from tcplog t WHERE t.sip="10.64.105.4" AND left(t.stime,10)="2017-11-28" GROUP BY t.dip,t.dport;";
            //ip+port
            StringBuffer str=new StringBuffer();
            //downlink
            StringBuffer str1=new StringBuffer();
            str.append("[");
            str1.append("[");
            ResultSet resultSet1=stmt.executeQuery(sql);
            while(resultSet1.next()){
            	str.append("\""+resultSet1.getString("dip")+" "+resultSet1.getString("dport")+"\",");
            	str1.append(""+resultSet1.getString("downlink")+",");
            }
            str.append("]");
            str1.append("]");
            str.delete(str.length()-2, str.length()-1);
            str1.delete(str1.length()-2, str1.length()-1);
            System.out.println(str.toString());
            System.out.println(str1.toString());*/
           /* String[] dateString={"2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10",
 	                "2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20",
 	                "2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28","2017-11-29","2017-11-30"};
            StringBuffer upSpeed=new StringBuffer();
            StringBuffer downSpeed=new StringBuffer();
            upSpeed.append("[");
            downSpeed.append("[");
            for(int i=0;i<30;i++){
            	String dateTime=dateString[i];
            	System.out.println("计算第["+dateTime+"]次");
            	String sql="SELECT left(a.stime,10),SUM(a.uplink_length),SUM(a.downlink_length),SUM(a.diffTime),SUM(a.uplink_length)/1024/1024/SUM(a.diffTime) upS,SUM(a.downlink_length)/1024/1024/SUM(a.diffTime) downS from (SELECT *,TIMESTAMPDIFF(SECOND,t.stime,t.dtime) diffTime from tcplog t WHERE left(t.stime,10)=""+dateTime+"")a;";
            	ResultSet resultSet=stmt.executeQuery(sql);
            	while(resultSet.next()){
            		upSpeed.append(resultSet.getString("upS")+",");
            		downSpeed.append(resultSet.getString("downS")+",");
            	}
            }
            upSpeed.append("]");
            downSpeed.append("]");
            upSpeed.delete(upSpeed.length()-2, upSpeed.length()-1);
            downSpeed.delete(downSpeed.length()-2, downSpeed.length()-1);
            System.out.println(upSpeed.toString());
            System.out.println(downSpeed.toString());*/
           /* String[] dateString={"2017-11-01 02","2017-11-01 07","2017-11-01 08","2017-11-01 09","2017-11-01 10","2017-11-01 11","2017-11-01 12",
               	                "2017-11-01 13","2017-11-01 14","2017-11-01 15","2017-11-01 16","2017-11-01 17","2017-11-01 18","2017-11-01 19",
             	                "2017-11-01 20","2017-11-01 21","2017-11-01 22","2017-11-02 02","2017-11-02 03","2017-11-02 04","2017-11-02 07",
             	                "2017-11-02 08","2017-11-02 09","2017-11-02 10","2017-11-02 11","2017-11-02 12","2017-11-02 13","2017-11-02 14",
             	                "2017-11-02 15","2017-11-02 16","2017-11-02 17","2017-11-02 18","2017-11-02 19","2017-11-02 20","2017-11-02 21",
             	                "2017-11-02 22","2017-11-03 02","2017-11-03 03","2017-11-03 04","2017-11-03 07","2017-11-03 08","2017-11-03 09",
             	                "2017-11-03 10","2017-11-03 11","2017-11-03 12","2017-11-03 13","2017-11-03 14","2017-11-03 15","2017-11-03 16",
             	                "2017-11-03 17","2017-11-03 18","2017-11-03 19","2017-11-03 20","2017-11-03 21","2017-11-03 22","2017-11-04 03",
             	                "2017-11-04 04","2017-11-04 08","2017-11-04 09","2017-11-04 10","2017-11-04 11","2017-11-04 12","2017-11-04 13",
             	                "2017-11-04 14","2017-11-04 15","2017-11-04 16","2017-11-04 17","2017-11-04 18","2017-11-04 19","2017-11-04 20",
             	                "2017-11-04 21","2017-11-05 02","2017-11-05 08","2017-11-05 09","2017-11-05 10","2017-11-05 11","2017-11-05 12",
             	                "2017-11-05 13","2017-11-05 14","2017-11-05 15","2017-11-05 16","2017-11-05 17","2017-11-05 18","2017-11-05 19",
             	                "2017-11-05 20","2017-11-05 21","2017-11-06 02","2017-11-06 07","2017-11-06 08","2017-11-06 09","2017-11-06 10",
             	                "2017-11-06 11","2017-11-06 12","2017-11-06 13","2017-11-06 14","2017-11-06 15","2017-11-06 16","2017-11-06 17",
             	                "2017-11-06 18","2017-11-06 19","2017-11-06 20","2017-11-06 21","2017-11-06 22","2017-11-07 02","2017-11-07 03",
             	                "2017-11-07 04","2017-11-07 07","2017-11-07 08","2017-11-07 09","2017-11-07 10","2017-11-07 11","2017-11-07 12",
             	                "2017-11-07 13","2017-11-07 14","2017-11-07 15","2017-11-07 16","2017-11-07 17","2017-11-07 18","2017-11-07 19",
             	                "2017-11-07 20","2017-11-07 21","2017-11-07 22","2017-11-08 02","2017-11-08 03","2017-11-08 04","2017-11-08 07",
             	                "2017-11-08 08","2017-11-08 09","2017-11-08 10","2017-11-08 11","2017-11-08 12","2017-11-08 13","2017-11-08 14",
             	                "2017-11-08 15","2017-11-08 16","2017-11-08 17","2017-11-08 18","2017-11-08 19","2017-11-08 20","2017-11-08 21",
             	                "2017-11-08 22","2017-11-09 02","2017-11-09 03","2017-11-09 04","2017-11-09 07","2017-11-09 08","2017-11-09 09",
             	                "2017-11-09 10","2017-11-09 11","2017-11-09 12","2017-11-09 13","2017-11-09 14","2017-11-09 15","2017-11-09 16",
             	                "2017-11-09 17","2017-11-09 18","2017-11-09 19","2017-11-09 20","2017-11-09 21","2017-11-09 22","2017-11-09 23",
             	                "2017-11-10 02","2017-11-10 03","2017-11-10 04","2017-11-10 07","2017-11-10 08","2017-11-10 09","2017-11-10 10",
             	                "2017-11-10 11","2017-11-10 12","2017-11-10 13","2017-11-10 14","2017-11-10 15","2017-11-10 16","2017-11-10 17",
             	                "2017-11-10 18","2017-11-10 19","2017-11-10 20","2017-11-10 21","2017-11-10 22","2017-11-10 23","2017-11-11 03",
             	                "2017-11-11 04","2017-11-11 07","2017-11-11 08","2017-11-11 09","2017-11-11 10","2017-11-11 11","2017-11-11 12",
             	                "2017-11-11 13","2017-11-11 14","2017-11-11 15","2017-11-11 16","2017-11-11 17","2017-11-11 18","2017-11-11 19",
             	                "2017-11-11 20","2017-11-11 21","2017-11-12 02","2017-11-12 09","2017-11-12 10","2017-11-12 11","2017-11-12 12",
             	                "2017-11-12 13","2017-11-12 14","2017-11-12 15","2017-11-12 16","2017-11-12 17","2017-11-12 18","2017-11-12 19",
             	                "2017-11-12 20","2017-11-12 21","2017-11-13 02","2017-11-13 03","2017-11-13 07","2017-11-13 08","2017-11-13 09",
             	                "2017-11-13 10","2017-11-13 11","2017-11-13 12","2017-11-13 13","2017-11-13 14","2017-11-13 15","2017-11-13 16",
             	                "2017-11-13 17","2017-11-13 18","2017-11-13 19","2017-11-13 20","2017-11-13 21","2017-11-13 22","2017-11-14 02",
             	                "2017-11-14 03","2017-11-14 04","2017-11-14 07","2017-11-14 08","2017-11-14 09","2017-11-14 10","2017-11-14 11",
             	                "2017-11-14 12","2017-11-14 13","2017-11-14 14","2017-11-14 15","2017-11-14 16","2017-11-14 17","2017-11-14 18",
             	                "2017-11-14 19","2017-11-14 20","2017-11-14 21","2017-11-14 22","2017-11-14 23","2017-11-15 02","2017-11-15 03",
             	                "2017-11-15 04","2017-11-15 07","2017-11-15 08","2017-11-15 09","2017-11-15 10","2017-11-15 11","2017-11-15 12",
             	                "2017-11-15 13","2017-11-15 14","2017-11-15 15","2017-11-15 16","2017-11-15 17","2017-11-15 18","2017-11-15 19",
             	                "2017-11-15 20","2017-11-15 21","2017-11-15 22","2017-11-16 02","2017-11-16 03","2017-11-16 04","2017-11-16 07",
             	                "2017-11-16 08","2017-11-16 09","2017-11-16 10","2017-11-16 11","2017-11-16 12","2017-11-16 13","2017-11-16 14",
             	                "2017-11-16 15","2017-11-16 16","2017-11-16 17","2017-11-16 18","2017-11-16 19","2017-11-16 20","2017-11-16 21",
             	                "2017-11-16 22","2017-11-16 23","2017-11-17 02","2017-11-17 03","2017-11-17 04","2017-11-17 07","2017-11-17 08",
             	                "2017-11-17 09","2017-11-17 10","2017-11-17 11","2017-11-17 12","2017-11-17 13","2017-11-17 14","2017-11-17 15",
             	                "2017-11-17 16","2017-11-17 17","2017-11-17 18","2017-11-17 19","2017-11-17 20","2017-11-17 21","2017-11-17 22",
             	                "2017-11-17 23","2017-11-18 03","2017-11-18 04","2017-11-18 07","2017-11-18 08","2017-11-18 09","2017-11-18 10",
             	                "2017-11-18 11","2017-11-18 12","2017-11-18 13","2017-11-18 14","2017-11-18 15","2017-11-18 16","2017-11-18 17",
             	                "2017-11-18 18","2017-11-18 19","2017-11-18 20","2017-11-18 21","2017-11-19 02","2017-11-19 03","2017-11-19 04",
             	                "2017-11-19 07","2017-11-19 08","2017-11-19 09","2017-11-19 10","2017-11-19 11","2017-11-19 12","2017-11-19 13",
             	                "2017-11-19 14","2017-11-19 15","2017-11-19 16","2017-11-19 17","2017-11-19 18","2017-11-19 19","2017-11-19 20",
             	                "2017-11-19 21","2017-11-20 02","2017-11-20 04","2017-11-20 07","2017-11-20 08","2017-11-20 09","2017-11-20 10","2017-11-20 11","2017-11-20 12","2017-11-20 13","2017-11-20 14","2017-11-20 15","2017-11-20 16","2017-11-20 17","2017-11-20 18","2017-11-20 19","2017-11-20 20","2017-11-20 21","2017-11-20 22","2017-11-20 23","2017-11-21 02","2017-11-21 03","2017-11-21 04","2017-11-21 07","2017-11-21 08","2017-11-21 09","2017-11-21 10","2017-11-21 11","2017-11-21 12","2017-11-21 13","2017-11-21 14","2017-11-21 15","2017-11-21 16","2017-11-21 17","2017-11-21 18","2017-11-21 19","2017-11-21 20","2017-11-21 21","2017-11-21 22","2017-11-22 02","2017-11-22 03","2017-11-22 04","2017-11-22 07","2017-11-22 08","2017-11-22 09","2017-11-22 10","2017-11-22 11","2017-11-22 12","2017-11-22 13","2017-11-22 14","2017-11-22 15","2017-11-22 16","2017-11-22 17","2017-11-22 18","2017-11-22 19","2017-11-22 20","2017-11-22 21","2017-11-22 22","2017-11-22 23","2017-11-23 02","2017-11-23 03","2017-11-23 04","2017-11-23 07","2017-11-23 08","2017-11-23 09","2017-11-23 10","2017-11-23 11","2017-11-23 12","2017-11-23 13","2017-11-23 14","2017-11-23 15","2017-11-23 16","2017-11-23 17","2017-11-23 18","2017-11-23 19","2017-11-23 20","2017-11-23 21","2017-11-23 22","2017-11-24 02","2017-11-24 03","2017-11-24 04","2017-11-24 07","2017-11-24 08","2017-11-24 09","2017-11-24 10","2017-11-24 11","2017-11-24 12","2017-11-24 13","2017-11-24 14","2017-11-24 15","2017-11-24 16","2017-11-24 17","2017-11-24 18","2017-11-24 19","2017-11-24 20","2017-11-24 21","2017-11-24 22","2017-11-25 03","2017-11-25 04","2017-11-25 07","2017-11-25 08","2017-11-25 09","2017-11-25 10","2017-11-25 11","2017-11-25 12","2017-11-25 13","2017-11-25 14","2017-11-25 15","2017-11-25 16","2017-11-25 17","2017-11-25 18","2017-11-25 19","2017-11-25 20","2017-11-25 21","2017-11-26 02","2017-11-26 07","2017-11-26 08","2017-11-26 09","2017-11-26 10","2017-11-26 11","2017-11-26 12","2017-11-26 13","2017-11-26 14","2017-11-26 15","2017-11-26 16","2017-11-26 17","2017-11-26 18","2017-11-26 19","2017-11-26 20","2017-11-26 21","2017-11-27 02","2017-11-27 07","2017-11-27 08","2017-11-27 09","2017-11-27 10","2017-11-27 11","2017-11-27 12","2017-11-27 13","2017-11-27 14","2017-11-27 15","2017-11-27 16","2017-11-27 17","2017-11-27 18","2017-11-27 19","2017-11-27 20","2017-11-27 21","2017-11-27 22","2017-11-28 02","2017-11-28 03","2017-11-28 04","2017-11-28 07","2017-11-28 08","2017-11-28 09","2017-11-28 10","2017-11-28 11","2017-11-28 12","2017-11-28 13","2017-11-28 14","2017-11-28 15","2017-11-28 16","2017-11-28 17","2017-11-28 18","2017-11-28 19","2017-11-28 20","2017-11-28 21","2017-11-28 22","2017-11-29 02","2017-11-29 03","2017-11-29 04","2017-11-29 07","2017-11-29 08","2017-11-29 09","2017-11-29 10","2017-11-29 11","2017-11-29 12","2017-11-29 13","2017-11-29 14","2017-11-29 15","2017-11-29 16","2017-11-29 17","2017-11-29 18","2017-11-29 19","2017-11-29 20","2017-11-29 21","2017-11-29 22","2017-11-30 02","2017-11-30 03","2017-11-30 04","2017-11-30 07","2017-11-30 08","2017-11-30 09","2017-11-30 10","2017-11-30 11","2017-11-30 12","2017-11-30 13","2017-11-30 14","2017-11-30 15","2017-11-30 16","2017-11-30 17","2017-11-30 18","2017-11-30 19","2017-11-30 20","2017-11-30 21","2017-11-30 22"};
            StringBuffer upSpeed=new StringBuffer();
            StringBuffer downSpeed=new StringBuffer();
            upSpeed.append("[");
            downSpeed.append("[");
            for(int i=0;i<dateString.length;i++){
            	String dateTime=dateString[i];
            	System.out.println("计算第["+dateTime+"]次");
            	String sql="SELECT left(a.stime,13),SUM(a.uplink_length),SUM(a.downlink_length),SUM(a.diffTime),SUM(a.uplink_length)/1024/SUM(a.diffTime) upS,SUM(a.downlink_length)/1024/SUM(a.diffTime) downS from (SELECT *,TIMESTAMPDIFF(SECOND,t.stime,t.dtime) diffTime from tcplog t WHERE left(t.stime,13)='"+dateTime+"')a;";
            	ResultSet resultSet=stmt.executeQuery(sql);
            	while(resultSet.next()){
            		upSpeed.append(resultSet.getString("upS")+",");
            		downSpeed.append(resultSet.getString("downS")+",");
            	}
            }
            upSpeed.append("]");
            downSpeed.append("]");
            upSpeed.delete(upSpeed.length()-2, upSpeed.length()-1);
            downSpeed.delete(downSpeed.length()-2, downSpeed.length()-1);
            System.out.println(upSpeed.toString());
            System.out.println(downSpeed.toString());*/
            /*String dates[]={"2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10",
            		"2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20",
            		"2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28","2017-11-29","2017-11-30"};
            StringBuffer str=new StringBuffer();
            str.append("[");
            for(int i=0;i<dates.length;i++){
            	String dateString=dates[i];
            	String sql="SELECT left(t.time,10),COUNT(*) COUNT_ from post_email t WHERE t.`from`='work@hightech.com' AND left(t.time,10)='"+dateString+"';";
            	ResultSet resultSet=stmt.executeQuery(sql);
            	if(resultSet.next()){
        			str.append(resultSet.getString("count_")+",");
            	}else{
            		str.append(0+",");
            	}
            }
            str.append("]");
            str.delete(str.length()-2, str.length()-1);
            System.out.println(str.toString());*/
            String sql="SELECT LEFT(t.time,10),COUNT(*) count_ from weblog t GROUP BY LEFT(t.time,10);";
            StringBuffer str=new StringBuffer();
            str.append("[");
            ResultSet resultSet=stmt.executeQuery(sql);
            while (resultSet.next()) {
            	str.append(resultSet.getString("count_")+",");
			}
            str.append("]");
            str.delete(str.length()-2, str.length()-1);
            System.out.println(str.toString());
        } catch (SQLException e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }

    }

}
