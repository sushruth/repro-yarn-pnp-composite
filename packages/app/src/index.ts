import { Foo } from "lib";
import { FooShared } from "shared";
import { Shared } from "lib2";

Foo.helloWorld();
Shared.BarShared.helloWorld();
FooShared.helloWorld();

type Check = ReturnType<
  | typeof Foo["helloWorld"]
  | typeof Shared.BarShared["helloWorld"]
  | typeof FooShared["helloWorld"]
>;
