use serde::{Deserialize, Serialize};
use smallvec::SmallVec;

#[derive(Serialize, Deserialize)]
#[repr(align(64))]
pub struct Post<'a> {
    #[serde(rename = "_id")]
    pub id: &'a str,
    pub title: &'a str,
    pub tags: Vec<&'a str>,
}

// pub type RelatedVec<'a> = Vec<&'a Post<'a>>;
pub type RelatedVec<'a> = SmallVec<[&'a Post<'a>; crate::NUM_TOP_ITEMS]>;

#[derive(Serialize)]
#[repr(align(64))]
pub struct RelatedPosts<'a> {
    #[serde(rename = "_id")]
    pub id: &'a str,
    pub tags: &'a [&'a str],
    pub related: RelatedVec<'a>,
}

#[derive(Eq)]
pub struct PostCount {
    pub post: u32,
    pub count: u8,
}

impl std::cmp::PartialEq for PostCount {
    #[inline]
    fn eq(&self, other: &Self) -> bool {
        self.count == other.count
    }
}

impl std::cmp::PartialOrd for PostCount {
    #[inline]
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl std::cmp::Ord for PostCount {
    #[inline]
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        // reverse order
        other.count.cmp(&self.count)
    }
}
