class Controller
  require_relative 'task'

  def initialize(repository, view)
    @repository = repository # INJECTION DE DEPENDANCE
    @view = view
  end

  # ACTIONS UTILISATEUR

  def display_all_tasks
    # 1 - Demander au repo la liste des taches
    tasks = @repository.all
    # 2 - Donner a view list tasks a afficher
    @view.display_tasks(tasks)
  end

  def add_task
    # 1 - Vue demande a USER description
    description = @view.ask_user_for_description
    # 2 - Creer une nouvelle tache avec la description
    task = Task.new(description)
    # 3 - Ajouter la tache au repo
    @repository.add(task)
  end

  def mark_task_as_done
    # 1 - Vue demande à l'user tache à marquer comme faite
    task_id = @view.ask_user_for_task_id
    # 2 - Demander au repo la tache en question
    task = @repository.find(task_id)
    # 3 - Marquer la tache comme faite
    task.mark_as_done
  end

  def destroy_task
    # 1 - Vue demande à l'user la tache à detruire
    # 2 - Demande au repo la tache en question
    # 3 - supprime la tache
  end
end
