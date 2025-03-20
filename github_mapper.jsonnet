{
  identity: {
    traits: {
      email: std.extVar('claims').email,
      name: std.extVar('claims').name
    }
  }
}
