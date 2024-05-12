defmodule RepoHanlder do
  @source_dir "~/src/github/config-dev/.config"
  @dest_dir "~/.config"

  @doc """
  copy files from `source_dir` (git repo) to `dest_dir` local
  """
  def deploy() do
    [source_dir, dest_dir] =
      [@source_dir, @dest_dir]
      |> Enum.map(&Path.expand/1)
      |> Enum.map(&validate_dir_path/1)
      |> tap(fn paths ->
        Enum.map(paths, fn p -> IO.puts("using dir: #{p}") end)
      end)

    copy_files(source_dir, dest_dir)
  end

  def copy_files(source_dir, dest_dir, opts \\ []) do
    if Keyword.get(opts, :with_confirmation) do
      # asks the user how to proceed in case of conflicts
      File.cp_r(source_dir, dest_dir,
        on_conflict: fn source, destination ->
          IO.gets("Overwriting #{destination} by #{source}. Type y to confirm. ") == "y\n"
        end
      )
    else
      File.cp_r(source_dir, dest_dir)
    end
  end

  def files_in_dir(directory) do
    directory
    |> File.ls!()
    |> tap(fn f -> IO.puts(f) end)
  end

  defp validate_dir_path(path) do
    unless File.exists?(path) do
      raise "Path does not exist: #{path}"
    end

    unless File.dir?(path) do
      raise "Path is not a directory: #{path}"
    end

    path
  end
end

RepoHanlder.deploy()
