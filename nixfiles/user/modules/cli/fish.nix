{config, pkgs, lib, ...}:
{
  programs.fish = {
    enable = true;

    functions.fish_prompt = ''
      set_color blue
      echo -n (prompt_pwd)
      echo '/~> ' '';

    functions.fish_right_prompt = ''
      date '+%H:%M' '';

    functions.fish_mode_prompt = ''
      switch $fish_bind_mode
        case default
	  set_color --bold red
	  echo 'N '
        case insert
	  set_color --bold green
	  echo 'I '
        case replace-one
	  set_color --bold green
	  echo 'R '
        case visual
	  set_color --bold brmagenta
	  echo 'V '
        case '*'
	  set_color --bold red
	  echo '? '
	end
	set_color normal
    '';

    promptInit = ''
      fish_vi_key_bindings
    '';
  };
}
