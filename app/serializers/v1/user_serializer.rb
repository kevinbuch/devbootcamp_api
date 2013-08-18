class V1::UserSerializer < V1::BaseSerializer
  attributes :name, :email, :bio, :profile # columns 
  #attributes :comments # associations
  attributes :cohort#, :exercises, :challenges # methods here that give more info

  def cohort
    {name: object.cohort.name, location: object.cohort.location, email: object.cohort.email, start_date: object.cohort.start_date}
  end

  def exercises
    {exercises: object.actor.exercises, exercise_attempts: object.actor.exercise_attempts,
     correct_exercise_attempts: object.actor.correct_exercise_attempts}
  end

  def challenges
    {challenges: object.actor.challenges, challenge_attempts: object.actor.challenge_attempts}
  end
end
