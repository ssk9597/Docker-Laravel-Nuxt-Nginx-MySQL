<?php

namespace App\Http\Middleware;

use Closure;

class Cors
{
  public function handle($request, Closure $next)
  {
    return $next($request)
      ->header('Access-Control-Allow-Origin', '*')
      ->header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
      ->header('Access-Control-Allow-Headers', 'Content-Type, X-XSRF-TOKEN');
    // Originを指定する場合は設定が必要です
    // ->header('Access-Control-Allow-Credentials', 'true');
  }
}
