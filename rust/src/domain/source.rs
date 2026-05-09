use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Source {
    pub id: i64,
    pub name: String,
    pub lang: String,
    pub is_nsfw: bool,
    pub icon_url: Option<String>,
    pub wasm_id: String,
    pub wasm_version: Option<String>,
    pub last_update: Option<i64>,
    pub is_installed: bool,
    pub has_update: bool,
}
