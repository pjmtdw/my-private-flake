{
  description = "my private flake";

  outputs = { self }: {

    templates = {

      trivial = {
        path = ./haskell;
        description = "haskell template";
      };
    };
  };
}
