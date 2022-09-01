return {
  summary = 'Create a texture view referencing this Texture.',
  description = [[
    Creates a new Texture view.  A texture view does not store any pixels on its own, but instead
    uses the pixel data of a "parent" Texture object.  The width, height, format, sample count, and
    usage flags all match the parent.  The view may have a different `TextureType` from the parent,
    and it may reference a subset of the parent texture's images and mipmap levels.

    Texture views can be used as render targets in a render pass and they can be bound to Shaders.
    They can not currently be used for transfer operations.  They are used for:

    - Reinterpretation of texture contents.  For example, a cubemap can be treated as
      an array texture.
    - Rendering to a particular image or mipmap level of a texture.
    - Binding a particular image or mipmap level to a shader.
  ]],
  arguments = {
    {
      name = 'parent',
      type = 'Texture',
      description = 'The parent Texture to create the view of.'
    },
    {
      name = 'type',
      type = 'TextureType',
      description = 'The texture type of the view.'
    },
    {
      name = 'layer',
      type = 'number',
      default = '1',
      description = 'The index of the first layer in the view.'
    },
    {
      name = 'layerCount',
      type = 'number',
      default = 'nil',
      description = 'The number of layers in the view, or `nil` to use all remaining layers.'
    },
    {
      name = 'mipmap',
      type = 'number',
      default = '1',
      description = 'The index of the first mipmap in the view.'
    },
    {
      name = 'mipmapCount',
      type = 'number',
      default = 'nil',
      description = 'The number of mipmaps in the view, or `nil` to use all remaining mipmaps.'
    }
  },
  returns = {
    {
      name = 'view',
      type = 'Texture',
      description = 'The new texture view.'
    }
  },
  related = {
    'Texture:isView',
    'Texture:getParent',
    'lovr.graphics.newTexture'
  }
}