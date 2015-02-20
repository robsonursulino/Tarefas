package com.robson.tarefas.teste;

import javax.persistence.EntityManager;

import com.robson.tarefas.jpa.JpaUtil;

public class CriaTabelas {

	public static void main(String[] args) {
		EntityManager manager = JpaUtil.getEntityManager();
		manager.close();
	}

}
