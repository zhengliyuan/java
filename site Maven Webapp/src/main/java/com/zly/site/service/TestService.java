package com.zly.site.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zly.site.dao.AllEmailCompanyExtMapper;
import com.zly.site.dao.AllEmailExtMapper;
import com.zly.site.dao.AllEmailMapper;
import com.zly.site.dao.AllEmailSendCompanyExtMapper;
import com.zly.site.dao.AllEmailSendCompanyMapper;
import com.zly.site.dao.AllEmailSendExtMapper;
import com.zly.site.dao.AllEmailSendMapper;
import com.zly.site.dao.PostEmailExtMapper;
import com.zly.site.dao.PostEmailMapper;
import com.zly.site.model.AllEmail;
import com.zly.site.model.AllEmailSend;
import com.zly.site.model.AllEmailSendCompany;
import com.zly.site.model.PostEmail;

@Service
public class TestService {
	@Resource
	private PostEmailMapper postMapper;
	@Resource
	private PostEmailExtMapper postEmailExtMapper;
	@Resource
	private AllEmailSendMapper allEmailSendMapper;
	@Resource
	private AllEmailExtMapper allEmailExtMapper;
	@Resource
	private AllEmailMapper allEmailMapper;
	@Resource
	private AllEmailSendExtMapper allEmailSendExtMapper;
	@Resource
	private AllEmailCompanyExtMapper allEmailCompanyExtMapper;
	@Resource
	private AllEmailSendCompanyMapper allEmailSendCompanyMapper;
	@Resource
	private AllEmailSendCompanyExtMapper allEmailSendCompanyExtMapper;
	
	public int chuli(){
		int count_=0;
		int i=0;
		//��ȡ�������
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		list=postEmailExtMapper.seclectAllList();
		System.out.println(String.valueOf(list));
		if(list.size()==0){
			i=999;
		}else{
			//ѭ��
			for(int j=0;j<list.size();j++){
				PostEmail postEmail=new PostEmail();
				postEmail.setTime(list.get(j).get("time").toString());
				postEmail.setProto(list.get(j).get("proto").toString());
				postEmail.setSip(list.get(j).get("sip").toString());
				postEmail.setSport(list.get(j).get("sport").toString());
				postEmail.setDip(list.get(j).get("dip").toString());
				postEmail.setDport(list.get(j).get("dport").toString());
				postEmail.setFrom(list.get(j).get("from").toString());
				postEmail.setSubject(list.get(j).get("subject").toString());
				//�������
				String preData=list.get(j).get("to").toString();
				String[] sourceStrArray = preData.split(";");
				for(int k=0;k<sourceStrArray.length;k++){
					//�����µ�model
					postEmail.setTo(sourceStrArray[k]);
					//������ݿ�
					postMapper.insert(postEmail);
				}
				count_+=sourceStrArray.length;
				System.out.println("本次插入了"+sourceStrArray.length+"条数据;当前共插入了"+count_+"条数据;");
			}
		}
		return i;
	}
	
	public int getallEmailSendLink(){
		int j=0;
		//获得所有邮箱list1
		List<Map<String,Object>> list1=allEmailExtMapper.selectAllSendEmail();
		//获得所有邮箱发送记录list2
		List<Map<String,Object>> list2=postEmailExtMapper.seclectAllList();
		System.out.println("本次共需要执行"+list2.size()+"次循环");
		//循环邮箱发送记录，找出发送邮箱和接收邮箱
		for(int i=0;i<list2.size();i++){
			//发件人
			String pfrom=list2.get(i).get("from").toString();
			//收件人
			String pto=list2.get(i).get("to").toString();
			//循环list1，找到发送邮箱和接受邮箱的的序号
			for(int k=0;k<list1.size();k++){
				if(pfrom.equals(list1.get(k).get("email").toString())){
					pfrom=list1.get(k).get("num").toString();
				}else if(pto.equals(list1.get(k).get("email").toString())){
					pto=list1.get(k).get("num").toString();
				}
			}
			if(pfrom.equals(list2.get(i).get("from").toString())){
				pfrom="failed";
			}
			if(pto.equals(list2.get(i).get("to").toString())){
				pto="failed";
			}
			AllEmailSend allEmailSend=new AllEmailSend();
			allEmailSend.setEmailFrom(pfrom);
			allEmailSend.setEmailTo(pto);
			allEmailSendMapper.insert(allEmailSend);
			System.out.println("本次共需要执行"+list2.size()+"次循环,当前执行到第:"+i+"次");
		}
		//将记录加入数据库
		return j;
	}
	
	public int getallemail(){
		int count=0;
		int max=3954;
		List<Map<String,Object>> list=postEmailExtMapper.seclectAllList();
		for(int i=0;i<list.size();i++)
		{
			String pto=list.get(i).get("to").toString();
			int count_=allEmailExtMapper.selectExist(pto);
			if(count_==0)
			{
				//插入数据
				AllEmail allEmail=new AllEmail();
				allEmail.setNum(String.valueOf(max));
				allEmail.setEmail(pto);
				allEmailExtMapper.insertOneEmail(allEmail);
				System.out.println("新增了一条数据，插入的num为："+max+",插入的email为："+pto);
				max++;
			}
			System.out.println("本次共需要循环："+list.size()+"次，此次为第："+i+"次");
		}
		return count;
	}
	//构建所有邮箱之间的邮件json
	public Map<String,Object> getAllInfo(){
		Map<String,Object> map=new HashMap<String, Object>();
		List<Map<String,Object>> list1=allEmailExtMapper.selectAllSendEmail();
		List<Map<String,Object>> list2=allEmailSendExtMapper.selectAllLink();
		StringBuffer stringBuffer=new StringBuffer();
		stringBuffer.append("{\"type\": \"force\",");
		stringBuffer.append("\"nodes\":[");
		stringBuffer.append(tranListToBuffer(list1,1));
		stringBuffer.append("],");
		stringBuffer.append("\"links\":[");
		stringBuffer.append(tranListToBuffer(list2,2));
		stringBuffer.append("]}");
		System.out.println(stringBuffer);
		return map;
	}
	
	public StringBuffer tranListToBuffer(List<Map<String,Object>> list,int count){
		StringBuffer stringBuffer=new StringBuffer();
		if(count==1){
			for(int i=0;i<list.size();i++){
				if(i<list.size()-1){
					stringBuffer.append("{\"name\":\"");
					stringBuffer.append(list.get(i).get("email").toString());
					stringBuffer.append("\"},");
				}else{
					stringBuffer.append("{\"name\":\"");
					stringBuffer.append(list.get(i).get("email").toString());
					stringBuffer.append("\"}");
				}
			}
		}else{
			for(int i=0;i<list.size();i++){
				if(i<list.size()-1){
					stringBuffer.append("{\"source\":");
					stringBuffer.append(list.get(i).get("email_from").toString());
					stringBuffer.append(",\"target\":");
					stringBuffer.append(list.get(i).get("email_to").toString());
					stringBuffer.append("},");
				}else{
					stringBuffer.append("{\"source\":");
					stringBuffer.append(list.get(i).get("email_from").toString());
					stringBuffer.append(",\"target\":");
					stringBuffer.append(list.get(i).get("email_to").toString());
					stringBuffer.append("}");
				}
			}
		}
		return stringBuffer;
	}
	
	public int emailConpamy(){
		int count=0;
		//查询所有邮件记录
		List<Map<String,Object>> list=postEmailExtMapper.seclectAllList();
		//循环邮件
		for(int i=0;i<list.size();i++){
			//获得邮件的发送方和接收方
			String email_from=list.get(i).get("from").toString();
			String email_to=list.get(i).get("to").toString();
			//判断邮件的发送方和接收方是否为公司邮箱
			String num_from=allEmailCompanyExtMapper.selectNumByEmail(email_from);
			String num_to=allEmailCompanyExtMapper.selectNumByEmail(email_to);
			if(num_from!=null && num_to!=null&& !num_from.equals("") && !num_to.equals("")){
				//是，将num加入
				count++;
				AllEmailSendCompany allEmailSendCompany=new AllEmailSendCompany();
				allEmailSendCompany.setEmailFrom(num_from);
				allEmailSendCompany.setEmailTo(num_to);
				allEmailSendCompanyMapper.insert(allEmailSendCompany);
				System.out.println("当前添加了："+count+"条数据");
			}
			System.out.println("共需要循环："+list.size()+"次，本次循环到第："+i+"次");
			//不是，直接滤过
		}
		return count;
	}
	//构建公司内部邮箱之间的邮件json
	public Map<String,Object> getAllInfoToCompany(){
		Map<String,Object> map=new HashMap<String, Object>();
		List<Map<String,Object>> list1=allEmailCompanyExtMapper.selectAllEmailCompany();
		List<Map<String,Object>> list2=allEmailSendCompanyExtMapper.selectAllCompanySendLink();
		StringBuffer stringBuffer=new StringBuffer();
		stringBuffer.append("{\"type\": \"force\",");
		stringBuffer.append("\"nodes\":[");
		stringBuffer.append(tranListToBuffer(list1,1));
		stringBuffer.append("],");
		stringBuffer.append("\"links\":[");
		stringBuffer.append(tranListToBuffer(list2,2));
		stringBuffer.append("]}");
		System.out.println(stringBuffer);
		return map;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
