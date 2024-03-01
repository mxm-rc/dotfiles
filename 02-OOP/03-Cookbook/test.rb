require_relative 'controller'
require_relative 'repository'
require_relative 'task'
require_relative 'view'

repo = Repository.new
task = Task.new('courses')
task2 = Task.new('ménage')

repo.add(task)
repo.add(task2)

# SCENARIO UTILISATEUR
# 1. Afficher les tâches
controller = Controller.new(repo, View.new)
controller.display_all_tasks

# 2. Ajouter une tache

controller.add_task

# 3. Afficher les taches à nouveau

controller.display_all_tasks

# 4. Marquer une tache comme faite

controller.mark_task_as_done

# 5. Afficher les taches à nouveau

controller.display_all_tasks
