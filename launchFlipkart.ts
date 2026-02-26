import { chromium } from 'playwright';

(async () => {
    // Launch a browser instance
    const browser = await chromium.launch({ headless: false });

    // Create a new browser context
    const context = await browser.newContext();

    // Open a new page
    const page = await context.newPage();

    // Navigate to Flipkart
    await page.goto('https://www.flipkart.com');

    // Wait for the page to load completely
    await page.waitForLoadState('load');

    console.log('Flipkart launched successfully!');

    // Close the browser after some time (optional)
    // await browser.close();
})();