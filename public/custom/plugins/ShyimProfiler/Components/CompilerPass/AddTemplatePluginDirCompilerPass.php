<?php


namespace ShyimProfiler\Components\CompilerPass;

use Symfony\Component\DependencyInjection\Compiler\CompilerPassInterface;
use Symfony\Component\DependencyInjection\ContainerBuilder;

/**
 * Class AddTemplatePluginDirCompilerPass
 * @package ShyimProfiler\Components\CompilerPass
 */
class AddTemplatePluginDirCompilerPass implements CompilerPassInterface
{
    /**
     * You can modify the container here before it is dumped to PHP code.
     *
     * @param ContainerBuilder $container
     */
    public function process(ContainerBuilder $container)
    {
        $template = $container->getDefinition('template');
        $template->addMethodCall('addPluginsDir', [$container->getParameter('shyim_profiler.smarty_dir')]);
    }
}
