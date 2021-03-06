-define(INFO(T), error_logger:info_report(T)).
%% -define(INFO(T), ignore).
-define(WARN(T), error_logger:warning_report(
        [process_info(self(), current_function), {line, ?LINE} | T])).
%% -define(WARN(T), ignore).

-define(ERR(T), error_logger:error_report(
        [process_info(self(), current_function), {line, ?LINE} | T])).
%% -define(ERR(T), ignore).
