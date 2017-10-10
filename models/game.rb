

class Game

  attr_accessor :choices, :selected

  def initialize()
    @choices = ['rock', 'paper', 'scissors']
    @selected = ""
  end

  def select_random()
    selection = @choices.sample(1)
    return selection.join.to_s
  end

  def player_choice(choice)
    @selected = choice
    return @selected.to_s
  end

  def compare(pick1, pick2)
    # try a guard clause, return 'winner' if pick1 == rock and pick 2 != paper
    # then at the end return no winner if none of those cases were met
    winner = ''
    case pick1
      when 'scissors'
        if pick2 == 'paper'
          return winner = 'you'
        elsif pick2 == 'rock'
          return winner = 'your opponent'
      when 'paper'
        if pick2 == 'rock'
          return winner = 'you'
        elsif pick2 == 'scissors'
          return winner = 'your opponent'
      when 'rock'
        if pick2 == 'scissors'
          return winner = 'you'
        elsif pick2 == 'paper'
          return winner = 'your opponent'
        end
    end
      return winner = 'no-one'

  end

end
