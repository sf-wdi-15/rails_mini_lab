require 'rails_helper'

RSpec.describe User, :type => :model do

  describe "validate" do

    describe "email" do 

      describe "on create" do

        it "should be present" do
        end

        it "should be confirmed" do
        end

        it "should enforce presence of email_confirmation" do
        end

        it "should be valid format" do
        end

      end

      describe "on updates where !email.nil?" do

        it "should be confirmed" do
        end

        it "should enforce presence of email_confirmation" do
        end

        it "should be valid format" do
        end

      end

    end

    describe "password" do 

      describe "on create" do

        it "should be present" do
        end

        it "should be confirmed" do
        end

        it "should enforce presence of confirmation" do
        end

        it "should have valid length" do
        end

        it "should be valid format" do
        end

      end

      describe "on updates where !password.nil?" do

        it "should be confirmed" do
        end

        it "should enforce presence of confirmation" do
        end

        it "should have valid length" do
        end

        it "should be valid format" do
        end

      end

    end

  end
  
end
