{
  description = "my private flake";

  outputs = { self }: {

    templates = {

      haskell = {
        path = ./haskell;
        description = "haskell template";
      };
    };
  };
}
