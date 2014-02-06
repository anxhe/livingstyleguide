require 'example_test_helper'

class FontExampleTest < ExampleTestCase

  def test_default_font_example
    assert_render_equals <<-INPUT, <<-OUTPUT
      @font-example 42px Comic Sans
    INPUT
      <div class="livingstyleguide--font-example" style="font: 42px Comic Sans">
        ABCDEFGHIJKLMNOPQRSTUVWXYZ<br>
        abcdefghijklmnopqrstuvwxyz<br>
        0123456789<br>
        !&/()$=@;:,.
      </div>
    OUTPUT
  end

  def test_default_font_example_with_custom_text
    assert_render_equals <<-INPUT, <<-OUTPUT
      @font-example 42px Comic Sans
      Schweißgequält zündet Typograf Jakob
      verflixt öde Pangramme an.
    INPUT
      <div class="livingstyleguide--font-example" style="font: 42px Comic Sans">
        Schweißgequält zündet Typograf Jakob<br>
        verflixt öde Pangramme an.
      </div>
    OUTPUT
  end

end

