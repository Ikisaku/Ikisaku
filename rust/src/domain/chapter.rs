use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Chapter {
    pub id: i64,
    pub manga_id: i64,
    pub url: String,
    pub name: String,
    pub chapter_number: f64,
    pub scanlator: Option<String>,
    pub read: bool,
    pub bookmark: bool,
    pub last_page_read: i32,
    pub date_fetch: Option<i64>,
    pub date_upload: Option<i64>,
    pub source_order: i32,
}
