require 'test_helper'

class DepconTest < Minitest::Test
  extend Minitest::Spec::DSL

  let(:str) { "㈱サンプルから℡がありました。「さきほど送った1㌻の項目№③ですが、20㍉ではなく20㌢が正しい数値になります。修正お願いします。」" }
  let(:expect_result) { "(株)サンプルからTELがありました。「さきほど送った1ページの項目No.(3)ですが、20ミリではなく20センチが正しい数値になります。修正お願いします。」" }

  def test_that_it_has_a_version_number
    refute_nil ::Depcon::VERSION
  end

  def test_depcon
    assert_equal expect_result, str.depcon
  end

  def test_empty_string
    assert_equal "", "".depcon
  end

  def test_depcon_non_destructive_test
    str.depcon
    refute_equal expect_result, str
  end

  def test_depcon!
    str.depcon!
    assert_equal expect_result, str
  end
end
