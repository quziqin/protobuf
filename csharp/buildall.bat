@rem Builds Google.Protobuf and runs the tests

dotnet pack --no-restore -c Release src/Google.Protobuf.sln -p:ContinuousIntegrationBuild=true

echo Running tests.

dotnet test src/Google.Protobuf.Test/Google.Protobuf.Test.csproj || goto :error

goto :EOF

:error
echo Failed!
exit /b %errorlevel%
