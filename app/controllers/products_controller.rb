class ProductsController < ApplicationController
	include OrdersHelper
	def index
		@order = Order.new
		@question = Question.new
	end
	
		
	def download_turist_doc
	  send_file(
	    "#{Rails.root}/public/documents/Анкета DS-160(Туристическая).docx",
	    filename: "Анкета DS-160 (Туристическая/деловая).docx",
	    type: "application/docx"
	  )
	end
	
	def download_student_doc
	  send_file(
	    "#{Rails.root}/public/documents/Анкета DS-160 (Студенческая).docx",
	    filename: "Анкета DS-160 (Студенческая виза).docx",
	    type: "application/docx"
	  )
	end
	
	def download_work_doc
	  send_file(
	    "#{Rails.root}/public/documents/Анкета DS-160 (Рабочая виза).docx",
	    filename: "Анкета DS-160 (Рабочая виза).docx",
	    type: "application/docx"
	  )
	end
	
end
