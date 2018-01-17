require 'rails_helper'

describe 'Create methods for core objects' do
  let!(:test_user) { User.create!(first_name: 'Test', last_name: 'User', email: 'test_user@gmail.com') }
  let!(:test_question) {Question.create!(title: 'How do I database?', user_id: test_user.id)}
  let!(:test_answer) {Answer.create!(user_id: test_user.id, question_id: test_question.id, body: 'This body has more than 20 characters')}
  it 'can create a new user' do
    expect(User.find(test_user.id).first_name).to eq 'Test'
  end
  it 'can create a new question' do
    expect(Question.find(test_question.id).user.first_name).to eq 'Test'
  end
  it 'can create a new answer' do
    expect(Answer.find(test_answer.id).user.first_name).to eq 'Test'
    expect(Answer.find(test_answer.id).question.title).to eq "How do I database?"
  end
end