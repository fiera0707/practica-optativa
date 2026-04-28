
using PracticaOptativa;
using System.Text;
namespace PracticaOptativa.Tools;

public class FileTool
{
    private readonly string _basePath;

    public FileTool()
    {
        _basePath = Directory.GetCurrentDirectory();
    }

    private string GetSafePath(string relativePath)
    {
        var fullPath = Path.GetFullPath(Path.Combine(_basePath, relativePath));

        if (!fullPath.StartsWith(_basePath))
            throw new Exception("Ruta fuera del proyecto no permitida");

        return fullPath;
    }

    public async Task<string> CreateFile(string relativePath, string content)
    {
        var path = GetSafePath(relativePath);

        if (File.Exists(path))
            return "⚠️ El archivo ya existe";

        var dir = Path.GetDirectoryName(path);
        if (!Directory.Exists(dir))
            Directory.CreateDirectory(dir!);

        await File.WriteAllTextAsync(path, content, Encoding.UTF8);

        return $"✅ Archivo creado: {relativePath}";
    }

    public async Task<string> ReadFile(string relativePath)
    {
        var path = GetSafePath(relativePath);

        if (!File.Exists(path))
            return "❌ Archivo no existe";

        return await File.ReadAllTextAsync(path);
    }
}