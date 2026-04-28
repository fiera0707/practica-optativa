


using PracticaOptativa.Services;
using PracticaOptativa.Tools;
namespace PracticaOptativa.Agents;
public class CodingAgent
{
    private readonly LLMService _llm;
    private readonly FileTool _fileTool;

    public CodingAgent(LLMService llm, FileTool fileTool)
    {
        _llm = llm;
        _fileTool = fileTool;
    }

    public async Task<string> GenerateCode(string input, String type)
    {
        var prompt = $@"
Actúa como un experto en .NET 8. Genera el código para una entidad de tipo '{type}' llamada '{input}'.

Reglas estrictas:
1. Namespace: Sigue la convención estándar 'Project.Application.{type}s'.
2. Atributos: Si es Controller, usa [ApiController] y [Route(""api/[controller]"")].
3. Eficiencia: Implementa constructores primarios (Primary Constructors) de .NET 8 para inyección de dependencias.
4. Estilo: Usa 'File-scoped namespaces' y modificadores de acceso adecuados.
5. Contenido: Incluye un esquema básico funcional (ej. un GET si es controller, un método Execute si es Command).

Salida: Solo código C#, sin texto introductorio ni explicaciones.";


        var code = await _llm.AskAsync(prompt);

        var fileName = $"Controllers/{input}Controller.cs";

        var result = await _fileTool.CreateFile(fileName, code);

        return result + "\n\n" + code;
    }
}