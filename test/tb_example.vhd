library vunit_lib;
context vunit_lib.vunit_context;

entity tb_example is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_example is
begin
  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    while test_suite loop

      if run("Test that passes") then
        check_true(true);

      elsif run("Test that passes 2") then
        check_true(true);

      elsif run("Test in PR that passes after correction") then
        check_true(true);
      end if;
    end loop;

    test_runner_cleanup(runner);
  end process;
end architecture;
