import { Foo } from "lib";
import { FooShared } from "shared";
import { a } from "yarn-pnp-composite";
import { Shared } from "lib2";

console.log(a);
Foo.helloWorld();
Shared.BarShared.helloWorld();
FooShared.helloWorld();

type Check = ReturnType<
  | typeof Foo["helloWorld"]
  | typeof Shared.BarShared["helloWorld"]
  | typeof FooShared["helloWorld"]
>;
