* When namespacing an API controllers
    - leave the application_controller.rb in the main controller folder, and not in the nested api/v1
        * If you don't this throws a uninitialized constant error and references the application_record.rb

render json: { instruction: instruction, sections: instruction.sections, sub_sections: instruction.sections[0].sub_sections, sub_sub_sections:  instruction.sections[0].sub_sections[0].sub_sub_sections}