<?php

/**
 * @file
 * Contains runtime code to alter the behavior of the installer. You should
 * generally leave this file alone unless you know what you're doing.
 */

declare(strict_types=1);

use Drupal\Core\Form\FormStateInterface;
use Drupal\RecipeKit\Installer\Hooks;

/**
 * Implements hook_install_tasks().
 */
function installer_install_tasks(): array {
  return Hooks::installTasks();
}

/**
 * Implements hook_install_tasks_alter().
 */
function installer_install_tasks_alter(array &$tasks, array $install_state): void {
  Hooks::installTasksAlter($tasks, $install_state);
}

/**
 * Implements hook_form_alter().
 */
function installer_form_alter(array &$form, FormStateInterface $form_state, string $form_id): void {
  Hooks::formAlter($form, $form_state, $form_id);
}
