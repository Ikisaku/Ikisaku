use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Manga {
    pub id: i64,
    pub source: i64,
    pub url: String,
    pub title: String,
    pub artist: Option<String>,
    pub author: Option<String>,
    pub description: Option<String>,
    pub genre: Option<Vec<String>>,
    pub status: MangaStatus,
    pub thumbnail_url: Option<String>,
    pub favorite: bool,
    pub last_update: Option<i64>,
    pub date_added: Option<i64>,
    pub viewer_flags: i32,
    pub chapter_flags: i32,
    pub cover_last_modified: i64,
    pub update_strategy: bool,
    pub initialized: bool,
}

#[derive(Debug, Clone, Copy, Serialize, Deserialize, PartialEq, Eq)]
pub enum MangaStatus {
    Unknown = 0,
    Ongoing = 1,
    Completed = 2,
    Licensed = 3,
    PublishingFinished = 4,
    Cancelled = 5,
    OnHiatus = 6,
}

impl Default for MangaStatus {
    fn default() -> Self {
        Self::Unknown
    }
}
