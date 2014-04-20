todo = {}

"Que devez-vous faire aujourd'hui ? (enter pour finir)"
task = gets.chomp.to_s

"Quel est la priorité de cette tâche ?"
priority = gets.chomp.to_i

def implementation(a, b)
  todo[a] = b
end

implementation(task, priority) until task == ""

