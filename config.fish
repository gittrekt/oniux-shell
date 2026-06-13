if status is-interactive
    set -g fish_greeting
    set -g fish_key_bindings fish_default_key_bindings

    # Only run host-specific tooling if we are NOT in an oniux session
    if not set -q IS_ONIUX_SESSION
        if type -q fastfetch
            fastfetch
        end
    end
end

if set -q IS_ONIUX_SESSION
    function fish_prompt
        set_color --bold purple
        echo -n '[oniux] '
        set_color normal
        echo -n (prompt_pwd) ' > '
    end
end
