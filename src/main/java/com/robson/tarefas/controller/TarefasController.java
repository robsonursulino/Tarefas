package com.robson.tarefas.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.robson.tarefas.jpa.JpaUtil;
import com.robson.tarefas.model.Tarefa;

@Controller
public class TarefasController {

	@RequestMapping("novaTarefa")
	public String novo() {
		return "tarefa/cadastro";
	}

	@RequestMapping("adicionaTarefa")
	public String adiciona(@Valid Tarefa tarefa, BindingResult result) {
		if (result.hasErrors()) {
			return "tarefa/cadastro";
		}

		EntityManager manager = JpaUtil.getEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		transaction.begin();
		manager.persist(tarefa);
		transaction.commit();

		manager.close();

		return "tarefa/adicionada";
	}

	@RequestMapping("listaTarefa")
	public String lista(Model model) {
		EntityManager manager = JpaUtil.getEntityManager();

		List<Tarefa> tarefas = manager.createQuery("from Tarefa", Tarefa.class).getResultList();

		model.addAttribute("tarefas", tarefas);

		return "tarefa/lista";
	}

}
