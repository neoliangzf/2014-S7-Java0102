package com.czy.dao;

import java.util.List;

import com.czy.bean.ShoppingCart;

public interface ShoppingCartDao {

	// Ϊָ��id�û���ӹ��ﳵ����Ʒ
	public boolean addGoods(int uid, int gid, int number) throws Exception;

	// Ϊָ��id�û�ɾ�����ﳵ����Ʒ
	public boolean deleteGoods(int uid, int gid, int number) throws Exception;

	// Ϊָ��id�û���ѯ���ﳵ������Ʒ
	public List<ShoppingCart> getAllGoods(int uid) throws Exception;

	// Ϊָ��id�û���ѯָ����Ʒ������
	public String getDesignateGoodsMs(int uid, int gid) throws Exception;

	// Ϊָ��id�û�֧����Ʒ
	public boolean payGoods(int uid, int gid, int number) throws Exception;

	// λָ��id�û�֧��������Ʒ
	public boolean payAllGoods(int uid) throws Exception;

}
