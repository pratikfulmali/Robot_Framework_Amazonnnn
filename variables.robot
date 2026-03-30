*** Variables ***
${URL}            https://www.amazon.com
${PRODUCT}        Laptop
${search_box_xpath}    //input[@placeholder='Search Amazon' and @role='searchbox']
${search_button_xpath}    //input[@type='submit' and @value='<<<>>>']
${button_contain_text}    //button[contains(text(),'<<<>>>')]
${span_text_following_button}    //span[contains(text(),'<<<>>>')]/following::button
${a_contains_text}    //a[contains(text(),'<<<>>>')]
${input_name}    //input[@name='<<<>>>']