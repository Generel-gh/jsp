package nvyoubao;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
	private ArrayList<String> zhuangTai;//用来保存随机状态
	private HashMap<String,ArrayList<String>> tiMu;//用来保存随机状态和选项
	
	public Status(){
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String,ArrayList<String>>();
		
		//情况添加
		String qingkuang="没有接到女朋友电话";
		zhuangTai.add(qingkuang);
		
		//选项添加
		String xuanXiang1="我手机静音了";
		String xuanXiang2="我在打游戏";
		String xuanXiang3="我在给你买东西";
		String xuanXiang4="我在工作";
		
		ArrayList<String> temp = new ArrayList<String>();
		//生成中间变量
		temp.add(xuanXiang1);
		temp.add(xuanXiang2);
		temp.add(xuanXiang3);
		temp.add(xuanXiang4);
		
		//将情况和选项放入hash表
		tiMu.put(qingkuang, temp);
	}

	public ArrayList<String> getZhuangTai() {
		return zhuangTai;
	}

	public void setZhuangTai(ArrayList<String> zhuangTai) {
		this.zhuangTai = zhuangTai;
	}

	public HashMap<String, ArrayList<String>> getTiMu() {
		return tiMu;
	}
	

}
