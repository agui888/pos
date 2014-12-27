package activiti.factory.impl;

import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;

import activiti.factory.Workflow;

public class WorkflowImpl implements Workflow {

	private RuntimeService runtimeService;

	private RepositoryService repositoryService;

	private IdentityService identityService;

	private TaskService taskService;

	private HistoryService historyService;
	
	private ManagementService managementService;
	
	public void setManagementService(ManagementService managementService) {
		this.managementService = managementService;
	}

	public void setRuntimeService(RuntimeService runtimeService) {
		this.runtimeService = runtimeService;
	}

	public void setRepositoryService(RepositoryService repositoryService) {
		this.repositoryService = repositoryService;
	}

	public void setIdentityService(IdentityService identityService) {
		this.identityService = identityService;
	}

	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}

	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
	}
	
}
