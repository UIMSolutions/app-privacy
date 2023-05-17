module apps.privacy;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.privacy.controllers;
  import apps.privacy.helpers;
  import apps.privacy.tests;
  import apps.privacy.views;
}

DApp privacyApp;
static this() {
  privacyApp = App
    .name("privacyApp")
    .rootPath("/apps/privacy")
    .addRoute(Route("", HTTPMethod.GET, PRVIndexPageController));
    .addRoute(Route("/", HTTPMethod.GET, PRVIndexPageController));
}