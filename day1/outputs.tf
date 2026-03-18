output "file_path" {
  description = "Absolute or relative path of the created file"
  value       = local_file.hello.filename
}
