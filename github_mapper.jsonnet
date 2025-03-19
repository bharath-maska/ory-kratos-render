local claims = {
  email_verified: false,
} + std.extVar('claims');

{
  identity: {
    traits: {
      // For GitHub, we can check if email exists
      [if 'email' in claims then 'email' else null]: claims.email,
      name: claims.name,
      github_username: claims.login,
    },
  },
}
