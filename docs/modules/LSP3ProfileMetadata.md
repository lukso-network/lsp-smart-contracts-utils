# Module: LSP3ProfileMetadata

## LSP3

### getProfileMetadata

▸ **getProfileMetadata**(`contract`, `provider?`): `Promise`\<`LSP3ProfileMetadataJSON`\>

Returns a object of type LSP3ProfileMetadata.

#### Parameters

| Name        | Type                     |
| :---------- | :----------------------- |
| `contract`  | `BytesLike` \| `ERC725Y` |
| `provider?` | `Provider`               |

#### Returns

`Promise`\<`LSP3ProfileMetadataJSON`\>

**`Since`**

v0.0.1

**`Throws`**

-   When fails fetching the data from the stored url.
-   When the fetched data is not `LSP3ProfileMetadata`.

**`See`**

https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-3-Profile-Metadata.md

**`Example`**

```ts
getProfileMetadata(ERC725Y) =>
{
  LSP3Profile: {
    name: string;
    description: string;
    links: Link[];
    tags: string[];
    avatar: (Avatar | NFTBasedAvatar)[];
    profileImage: (Image | NFTBasedImage)[];
    backgroundImage: (Image | NFTBasedImage)[];
  }
}
```

#### Defined in

[LSP3ProfileMetadata/getProfileMetadata/getProfileMetadata.ts:53](https://github.com/lukso-network/lsp-utils/blob/309c96ce8e1c657ee24b38cdd9cd4a8faba83bcf/src/LSP3ProfileMetadata/getProfileMetadata/getProfileMetadata.ts#L53)

---

### isProfileMetadata

▸ **isProfileMetadata**(`object`): object is LSP3ProfileMetadataJSON

Returns `true` if the passed object is an LSP3 Profile Metadata, `false` otherwise.

#### Parameters

| Name     | Type  | Description                       |
| :------- | :---- | :-------------------------------- |
| `object` | `any` | The object that is to be checked. |

#### Returns

object is LSP3ProfileMetadataJSON

**`Since`**

v0.0.1

**`See`**

https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-3-Profile-Metadata.md

**`Example`**

```ts
isProfileMetadata({ LSP3Profile: { name: "", description: "", links: [], tags: [] avatar: [], profileImage: [], backgroundImage: [], } }) => true
isProfileMetadata({ description: "", links: [], name: "", tags: [] }) => false
```

#### Defined in

[LSP3ProfileMetadata/isProfileMetadata/isProfileMetadata.ts:16](https://github.com/lukso-network/lsp-utils/blob/309c96ce8e1c657ee24b38cdd9cd4a8faba83bcf/src/LSP3ProfileMetadata/isProfileMetadata/isProfileMetadata.ts#L16)

---

### setProfileMetadata

▸ **setProfileMetadata**(`erc725y`, `json`, `url`, `signer?`): `Promise`\<`void`\>

Set Profile metadata.

#### Parameters

| Name      | Type                      | Description                                                                  |
| :-------- | :------------------------ | :--------------------------------------------------------------------------- |
| `erc725y` | `BytesLike` \| `ERC725Y`  | The address of the Profile to set the metadata for.                          |
| `json`    | `LSP3ProfileMetadataJSON` | The JSON file content hosted at `url`.                                       |
| `url`     | `string`                  | The URL where the JSON file is hosted.                                       |
| `signer?` | `Signer` \| `Wallet`      | The ethers `Signer`, address that is allowed to modify the Profile metadata. |

#### Returns

`Promise`\<`void`\>

**`See`**

https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-3-Profile-Metadata.md

**`Example`**

```ts
setProfileMetadata(
  "0x..."
  {
    LSP3Profile: {
      "name": "Tom",
      "description": "Some random description about Tom"
    }
  },
  "https://google.com/",
  signer
)
```

#### Defined in

[LSP3ProfileMetadata/setProfileMetadata/setProfileMetadata.ts:38](https://github.com/lukso-network/lsp-utils/blob/309c96ce8e1c657ee24b38cdd9cd4a8faba83bcf/src/LSP3ProfileMetadata/setProfileMetadata/setProfileMetadata.ts#L38)
