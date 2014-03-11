package com.rbac.common;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("unchecked")
public interface BaseDao {
	
	/**
	 * 
	 */
	public abstract <T> void save(T instance);

	/**
	 * ɾ������
	 * @param persistentInstance Ҫɾ���Ķ���
	 */
	public abstract <T> void delete(T persistentInstance);

	/**
	 * �ϲ�����
	 * @param detachedInstance Ҫ�ϲ����ѹܶ���
	 * @return �ϲ���Ĺ�������
	 */
	public abstract <T> T merge(T detachedInstance);

	/**
	 * �����������Ҷ���
	 * @param id ����ֵ��
	 * @return �ҵ��Ķ���
	 */
	public abstract <T> T findById(Serializable id);

	/**
	 * �������Ӳ��Ҷ���
	 * @param instance ��Ϊ���ӵĶ���
	 * @return �ҵ��Ķ����б�
	 */
	public abstract <T> List<T> findByExample(T instance);
	
	/**
	 * �г����ж���
	 * @return ���ж����б�
	 */
	public abstract <T> List<T> listAll();
	
}