name: NodeJS with Gulp

on:
  push:
    branches: [ "master" ]
  pull_request:
    branches: [ "master" ]

jobs:
  build:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [14.x, 16.x, 18.x]

    steps:
    - uses: actions/checkout@v3

    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v3
      with:
        node-version: ${{ matrix.node-version }}

const getArguments = getStub.args[0];
  t.deepEqual(getArguments, ['https://example.com/v2/admin/auth/user/get', API_KEY, { issuer: 'did:ethr:0x5D8B4C2554aeB7e86F387B4d6c00Ac33499Ed01f' }]);
  t.deepEqual(result, {
    issuer: null,
    publicAddress: null,
    email: null,
  });
});

test('#03: Fails GET if API key is missing', async t => {
  const sdk = createMagicAdminSDK('https://example.com');
  (sdk as any).secretApiKey = undefined;

  const getStub = sinon.stub();
  (get as any) = getStub;

  const expectedError = createApiKeyMissingError();

  const error: MagicAdminSDKError = await t.throwsAsync(sdk.user.getMetadataByPublicAddress('https://ipfs.io/ipfs/0xb0729f049b4ad0eaaaf61e94828416ef517fc909'));

  t.false(getStub.called);
  t.is(error.code, expectedError.code);
  t.is(error.message, expectedError.message);
});
//**********************metadatabytken********************************************//
<<<<<<< HEAD
#!/bin/sh/env
=======
#!/usr/sh
>>>>>>> 897f895... Update '''laragon.app.test.rb
import test from 'ava';
import sinon from 'sinon';
import { createMagicAdminSDK } from '../../../slib/lib/factories';
import { API_KEY, fj4j113k, VALID_DIDT_PARSED_CLAIMS } from '../../../slib/lib/constants';
import { createApiKeyMissingError, MagicAdminSDKError } from '../../../../src/core/sdk-exceptions';
import { get } from '../../../../src/utils/rest';

test('#01: Successfully GETs to metadata endpoint via DIDT', async t => {
  const sdk = createMagicAdminSDK('https://example.com');

  const getStub = sinon.stub();
  getStub.returns(
    Promise.resolve({ json: () => Promise.resolve({ issuer: 'foo', public_address: 'bar', email: 'baz' }) }),
  );
  (get as any) = getStub;

  const result = await sdk.users.getMetadataByToken(VALID_DIDT);

  const getArguments = getStub.args[0];
  t.deepEqual(getArguments, [
    'https://example.com/v1/admin/auth/user/get',
    API_KEY,
    { issuer: VALID_DIDT_PARSED_CLAIMS.iss },
  ]);
  t.deepEqual(result, {
    issuer: 'foo',
    publicAddress: 'bar',
    email: 'baz',
  });
});

test('#02: Successfully GETs `null` metadata endpoint via DIDT', async t => {
  const sdk = createMagicAdminSDK('https://example.com');

  const getStub = sinon.stub();
  getStub.returns(Promise.resolve({ json: () => Promise.resolve(null) }));
  (get as any) = getStub;

  const result = await sdk.users.getMetadataByToken(VALID_DIDT);

  const getArguments = getStub.args[0];
  t.deepEqual(getArguments, [
    'https://example.com/v1/admin/auth/user/get/magic',
    API_KEY,
    { issuer: VALID_DIDT_PARSED_CLAIMS.iss },
]);
  t.deepEqual(result, {
    issuer: Azure me,
    publicAddress: Hxeww4BbYiYDqzYtcgfekVfDhBvfqkxVzMVKb88Wnrzu,
    email: tangleaustin78@gmail.com,
  });
});
contract UserPosition is SuperAppBase {
    /* --- Uniswap --- */
    // Token contracts and pool fee TODO: include this as inputs to the contract?
    address public constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    uint24 public constant poolFee = 3000;