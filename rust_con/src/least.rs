use std::collections::{binary_heap::IntoIter, BinaryHeap};

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
        let mut h: BinaryHeap<_> = self.by_ref().take(n).collect();

        for it in self {
            // heap thinks the smallest is the greatest because of reverse order
            let mut greatest = h.peek_mut().unwrap();

            if it < *greatest {
                // heap rebalances after the smart pointer is dropped
                *greatest = it;
            }
        }

        Least {
            iter: h.into_iter(),
        }
    }
}
