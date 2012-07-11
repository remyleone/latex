% =========================================================================
% CLASSE LaTeX POUR LA REDACTION DE THÈSE
% 
% Julien Chiquet
%
% Nécessite au moins un fichier de style pour la thèse
% plus le fichier de style pour les pages administratives

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{these_gi}[2005/09/21 Classe pour ma thèse]

%% Les differents styles 
\newif\if@stylejchiquet \@stylejchiquetfalse
% POUR L'INSTANT UN SEUL !!!

%% Chargement de la classe book, avec transfert d'options
\PassOptionsToClass{a4paper}{book}
\PassOptionsToClass{11pt}{book}
\PassOptionsToClass{twoside}{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{stylejchiquet}{\@stylejchiquettrue}
\DeclareOption*{}
\ProcessOptions
\LoadClass{book}

% ==========================================================================
% PACKAGES STANDARD REQUIS

% FONTS ET CARACTÈRES
\RequirePackage[T1]{fontenc}
\RequirePackage[latin1]{inputenc}
\RequirePackage[frenchb]{babel}
\frenchspacing
\RequirePackage{eurosym}
\RequirePackage{xcolor}
% ============================================================================
% CHARGEMENT DE LA FEUILLE DE STYLE CHOISIE
\if@stylejchiquet
  \RequirePackage{stylejchiquet}
\fi
