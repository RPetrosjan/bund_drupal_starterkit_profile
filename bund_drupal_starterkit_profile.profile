<?php

/**
 * @file
 * Enables modules and site configuration for the bund_drupal_starterkit_profile profile.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 */
function bund_drupal_starterkit_profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Pre-select regional settings for Switzerland
  $form['regional_settings']['site_default_country']['#default_value'] = 'CH';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'Europe/Zurich';
}
