{ mkDerivation, base, bytestring, cereal, containers, deepseq
, QuickCheck, safe, stdenv, tasty, tasty-hunit, tasty-quickcheck
, text
}:
mkDerivation {
  pname = "proto3-wire";
  version = "1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring cereal containers deepseq QuickCheck safe text
  ];
  testHaskellDepends = [
    base bytestring cereal QuickCheck tasty tasty-hunit
    tasty-quickcheck text
  ];
  description = "A low-level implementation of the Protocol Buffers (version 3) wire format";
  license = stdenv.lib.licenses.asl20;
}
