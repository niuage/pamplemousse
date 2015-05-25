module ApplicationHelper
  def body_classes
    classes = []
    classes << (user_signed_in? ? "signed_in" : "signed_out")
    classes << ["a-#{controller.action_name} c-#{controller.controller_name}"]
    if (controller_name = controller.class.name).index("::")
      namespace = controller_name.split("::").first.downcase
      classes << "m-#{namespace}"
    end
    classes.join(" ")
  end
end
