```ada
procedure Example is
   X : Integer := 10;
   Y : Integer;
begin
   begin
      Y := X / 0; -- This might raise Constraint_Error
      Put_Line("This line will execute only if there's no error");
   exception
      when Constraint_Error =>
         Put_Line("Division by zero error handled gracefully");
   end;
   Put_Line("Program continues execution");
end Example;
```