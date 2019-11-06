require 'test_helper'

class AthletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get athletes_url
    assert_response :success
  end

  test "should get new" do
    get new_athlete_url
    assert_response :success
  end

  test "should create athlete" do
    assert_difference('Athlete.count') do
      post athletes_url, params: { athlete: { agility: @athlete.agility, description: @athlete.description, image_url: @athlete.image_url, name: @athlete.name, speed: @athlete.speed, strength: @athlete.strength, technique: @athlete.technique } }
    end

    assert_redirected_to athlete_url(Athlete.last)
  end

  test "should show athlete" do
    get athlete_url(@athlete)
    assert_response :success
  end

  test "should get edit" do
    get edit_athlete_url(@athlete)
    assert_response :success
  end

  test "should update athlete" do
    patch athlete_url(@athlete), params: { athlete: { agility: @athlete.agility, description: @athlete.description, image_url: @athlete.image_url, name: @athlete.name, speed: @athlete.speed, strength: @athlete.strength, technique: @athlete.technique } }
    assert_redirected_to athlete_url(@athlete)
  end

  test "should destroy athlete" do
    assert_difference('Athlete.count', -1) do
      delete athlete_url(@athlete)
    end

    assert_redirected_to athletes_url
  end
end