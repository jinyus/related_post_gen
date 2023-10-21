use std::vec::IntoIter;
use std::{cmp::Reverse, collections::BinaryHeap};

pub struct Least<L>
where
    L: Iterator,
{
    iter: IntoIter<L::Item>,
}

impl<L> Iterator for Least<L>
where
    L: Iterator,
{
    type Item = L::Item;

    #[inline]
    fn next(&mut self) -> Option<Self::Item> {
        self.iter.next()
    }
}

pub trait IteratorExt: Iterator + Sized {
    fn least_n(self, n: usize) -> Least<Self>;
}

impl<T> IteratorExt for T
where
    T: Iterator,
    <T as IntoIterator>::Item: Ord,
{
    fn least_n(mut self, n: usize) -> Least<Self> {
        let mut h: BinaryHeap<_> = self.by_ref().take(n).map(Reverse).collect();

        for it in self.map(Reverse) {
            let mut least = h.peek_mut().unwrap();
            if least.gt(&it) {
                // heap rebalances after the smart pointer is dropped
                *least = it;
            }
        }

        let iter = h.into_iter().map(|x| x.0).collect::<Vec<_>>().into_iter();

        Least { iter }
    }
}
