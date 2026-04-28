
namespace PracticaOptativa.Services;

using Microsoft.SemanticKernel;
using Microsoft.SemanticKernel.Connectors.Ollama;

public class LLMService
{
    private readonly Kernel _kernel;

    public LLMService(IConfiguration config)
    {
        var builder = Kernel.CreateBuilder();

        // Configuramos Ollama en lugar de OpenAI
        // Por defecto, Ollama corre en el puerto 11434
        builder.AddOllamaChatCompletion(
            modelId: "phi3", // Asegúrate que coincida con lo que descargaste
            endpoint: new Uri("http://localhost:11434") 
        );

        _kernel = builder.Build();
    }

    public async Task<string> AskAsync(string prompt)
    {
        var result = await _kernel.InvokePromptAsync(prompt);
        return result.ToString();
    }
}
