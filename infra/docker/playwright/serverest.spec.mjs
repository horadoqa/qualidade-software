import { test, expect } from '@playwright/test';

test('Abrir homepage', async ({ page }) => {
  await page.goto('https://serverest.dev/');

  await expect(page).toHaveTitle(/ServeRest/i);
});


// no package.json
// {
//   "type": "module"
// }