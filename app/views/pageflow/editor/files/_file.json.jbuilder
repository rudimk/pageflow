json.(file, :id, :state, :rights, :usage_id)
json.retryable(file.retryable?)
json.file_name(file.attachment.original_filename)

if file.url.present?
  json.url(file.url)
end

if file_type.editor_partial.present?
  json.partial!(:object => file, :partial => file_type.editor_partial)
end
