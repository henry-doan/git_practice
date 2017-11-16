module Git 
  def puts_git(cmd)
    puts `git #{cmd} -h`
  end
end