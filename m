Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4D89916518D
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 22:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582147561;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M2T7Rb19kn4XGfnKP1CTx32euuTsS1p+YRSrXJo4oEI=;
	b=V9S7Om63LRu+RbeGEwnQj0rb43gKEN8S4I7A1R6eiNpMg4DfHsDouKmYP/uWjGo2puH51S
	B3v9sWxxOLquHS6RCyzmJ0X3SmOb/Q6+d9fvpsngkSEEqUsmnnP57q3SngN9691e3oO/Bi
	KNdddPi53R103WhlTQ91Z7Lwnrb1m/g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-KdsWlzOBO---4GKe56TchA-1; Wed, 19 Feb 2020 16:25:58 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E35F613E2;
	Wed, 19 Feb 2020 21:25:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53ADD1001281;
	Wed, 19 Feb 2020 21:25:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BAA735AF0;
	Wed, 19 Feb 2020 21:25:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JLOXGb003447 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 16:24:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D4F2CF8A17; Wed, 19 Feb 2020 21:24:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0910F9AAE
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 21:24:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8E798007C9
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 21:24:31 +0000 (UTC)
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-184-m567rRpQPF6Bl_wz2wR3Mw-1; Wed, 19 Feb 2020 16:24:29 -0500
Received: from darkstar.slint.fr (unknown [176.172.247.100])
	(Authenticated sender: appartement.cdm)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id 5B41919F5B2
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 22:24:27 +0100 (CET)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG_M7XDxYPgRvV5s0tomokymQOqfBZGU4cw9gzrTeOKLw@mail.gmail.com>
Message-ID: <7cbdc2db-3a8b-693b-db00-73e4784d73d3@free.fr>
Date: Wed, 19 Feb 2020 22:24:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAJKfDDG_M7XDxYPgRvV5s0tomokymQOqfBZGU4cw9gzrTeOKLw@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: m567rRpQPF6Bl_wz2wR3Mw-1
X-MC-Unique: KdsWlzOBO---4GKe56TchA-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JLOXGb003447
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpNYXliZSBJIHNob3VsZG4ndCBhbnN3ZXIgYWdhaW4sIGJ1dCBoZXJlIGdvZXMuCgpM
ZSAxOS8wMi8yMDIwIMOgIDIxOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0IDoKPiBJIGhlbHAgbWFuYWdlIGEgbWFzc2l2ZWx5IGFjdGl2ZSBMaW51eCBjb21t
dW5pdHkgb2Ygb3ZlciAxMDBrIG1lbWJlcnMgZm9yCj4gbmVhciBhIGRlY2FkZSwgSSBiYXJlbHkg
cmVjYWxsIHRvIGhhdmUgc2VlbiBhbnkgU2xhY2t3YXJlIHVzZXIKClRoYXQncyBiZWNhdXNlIFNs
YWNrd2FyZSB1c2VycyB1c2UgTGludXhRdWVzdGlvbnMgdG8gZ2V0IHN1cHBvcnQuCgpBbHNvLCBn
ZW51aW5lIFNsYWNrd2FyZSBpcyBub3QgYWNjZXNzaWJsZSAoYnV0IGZvciB1c2VycyBvZiBoYXJk
CnN5bnRoZXNpemVycyBhbmQgc29tZSBwZW9wbGUgcmVtZW1iZXIgdGhhdCBpdCB3YXMgdGhlIHZl
cnkgZmlyc3QgdG8Kc2hpcCBhIGtlcm5lbCB3aXRoIHNwZWFrdXApLiBCdXQgU2xpbnQgaXMuCgo+
IExpbnV4cXVlc3Rpb25zIHdlYnNpdGUgaXMgb25lIG9mIG9sZGVzdCBsaW51eCByZXNzb3VyY2Vz
IGFuZCBnb3QKPiBhcm91bmQgMTUgc2xhY2t3YXJlIHF1ZXN0aW9ucyBwZXIgZGF5IGluIHRoZSBs
YXN0IHR3byBkYXlzIGJ1dCBvbmx5IDgKPiBxdWVzdGlvbnMgb24gbWF5YmUgMzAgZ290IGFuc3dl
cmVkIHNvIGl0J3MgdXAgdG8gZGViYXRlIC4uLgoKTW9zdCBTbGFja3dhcmUgdXNlcnMgZmluZCBh
bnN3ZXJzIHRvIHRoZWlyIHF1ZXN0aW9ucyBvbiBMUS4gVGhpcyBvbmx5Cm1hdHRlcnMsIG5vdCB0
aGUgc3RhdGlzdGljcy4KCj4gU2xhY2t3YXJlIGlzIDcgb2YgMjUwIGFjdGl2ZSBkaXN0cm9zIGFi
b3V0IDIuOCUgb2YgTGludXggYXMgYSB3aG9sZSwKPiB3aGlsZSBEZWJpYW4gaXMgdGhlIGJhc2Ug
b2YgMTIwIG9mIDI1MCBkaXN0cm9zIHNvIDQ4JSBvZiBMaW51eCBvbiBhCj4gcXVpY2sgY2hlY2sK
CkhpdCBwZXIgZGF5cyBAIGRpc3Ryb3dhdGNoLmNvbSBJIGFzc3VtZS4gV2hvIGNhcmVzLCBidXQg
dGhlIHByb2Zlc3Npb25hbApkaXN0cm8taG9wcGVycz8gSSBkb24ndCBjYXJlIGhvdyAicG9wdWxh
ciIgaXMgU2xpbnQgKGl0IGlzIG5vdCBldmVuCmxpc3RlZCBieSBEaXN0cm93YXRjaCBhcyBJIGRp
ZG4ndCByZXF1ZXN0IHRoYXQpLCBhcyBsb25nIGF0IGl0IGhlbHBzIGl0cwp1c2VyIGJhc2UsIGFz
IHNtYWxsIGFzIGl0IGJlLgoKPiBEZWJpYW4gZG9uJ3QgZm9jdXMgb24gYWNjZXNzaWJpbGl0eSBz
byB0aGUgbWFpbGluZyBsaXN0IG1pZ2h0IG9idmlvdXNseSBiZQo+IGxlc3MgYWN0aXZlIGJ1dCBv
dmVyYWxsIGl0J3MgdGhlIHN1cHBvcnQgb2YgYSBjb21tdW5pdHkgdGhhdCBtYXR0ZXIgZm9yCj4g
cXVpY2sgdHJvdWJsZXNob290aW5nLgoKQWdyZWVkLCBmb3J0dW5hdGVseSBJIGRvbid0IGhlYXIg
bXVjaCBjb21wbGFpbnRzIGlmIGFueSBhYm91dCB0aGlzCnN1cHBvcnQgY29taW5nIGZyb20gU2xh
Y2t3YXJlIG9yIFNsaW50IHVzZXJzLgoKPiBTdG9wIG1ha2luZyBsaWtlIGRpc3RybyBob3BwaW5n
IHdhcnMgdGhhdCBhcmUgcGxhaW4gc3R1cGlkCgpJc24ndCBpdCB3aGF0IHlvdSBhcmUganVzdCBk
b2luZz8KCj4gU2xpbnQgc2VlbSB0byBsYWNrIHRoZSBtYWduaWZpY2F0aW9uIGdhaW4gb2YgQ29t
cGl6LCBtYWtlIGNvbG9yIGZpbHRlcnMKPiBhbmQgY29sb3IgaW52ZXJzaW9uIG1vcmUgdGVkaW91
cwoKVGhpcyBpcyBwbGFpbiB3cm9uZy4gRm9yIGluc3RhbmNlIGluIFNsaW50IENvbXBpeiBoYXMg
ZVpvb20gZW5hYmxlZCBieQpkZWZhdWx0LiBIZXJlIGFyZSB0aGUgYWNjZXNzaWJpbGl0eSBzZXR0
aW5ncyBvZiBDb21waXogaW4gU2xpbnQ6CgotLS0KCjIuIENhdGVnb3J5IEFjY2Vzc2liaWxpdHkK
ClthZGRoZWxwZXJdIERpbSBpbmFjdGl2ZSAobGVzcyBsaWdodCBvbiBub24gZm9jdXNlZCB3aW5k
b3dzKQp0b2dnbGVfa2V5ID0gPFN1cGVyPnAKCltjb2xvcmZpbHRlcl0gKEZpbHRlciBjb2xvciBm
b3IgYWNjZXNzaWJpbGl0eSBwdXJwb3NlcykKdG9nZ2xlX3dpbmRvd19rZXkgPSA8U3VwZXI+PEFs
dD5mCnRvZ2dsZV9zY3JlZW5fa2V5ID0gPFN1cGVyPjxBbHQ+ZApzd2l0Y2hfZmlsdGVyX2tleSA9
IDxTdXBlcj48QWx0PnMKCltlem9vbV0gRW5oYW5jZWQgWm9vbSBEZXNrdG9wCnpvb21faW5fYnV0
dG9uID0gPFN1cGVyPkJ1dHRvbjQKem9vbV9vdXRfYnV0dG9uID0gPFN1cGVyPkJ1dHRvbjUKem9v
bV9ib3hfYnV0dG9uID0gPFN1cGVyPkJ1dHRvbjIgKHpvb20gb3V0IHRvIGdvIGJhY2sgdG8gbm9y
bWFsKQoKW25lZ10gTmVnYXRpdmUgKHRvZ2dsZSBpbnZlcnNlIGNvbG9ycyBvZiB0aGUgd2luZG93
IG9yIHNjcmVlbikKd2luZG93X3RvZ2dsZV9rZXkgPSA8U3VwZXI+bgpzY3JlZW5fdG9nZ2xlX2tl
eSA9IDxTdXBlcj5tCgpbb2JzXSBPcGFjaXR5LCBCcmlnaHRuZXNzIGFuZCBTYXR1cmF0aW9uIGFk
anVzdG1lbnRzCm9wYWNpdHlfaW5jcmVhc2VfYnV0dG9uID0gPEFsdD5CdXR0b240Cm9wYWNpdHlf
ZGVjcmVhc2VfYnV0dG9uID0gPEFsdD5CdXR0b241Cgpbc2hvd21vdXNlXSAoSW5jcmVhc2Ugdmlz
aWJpbGl0eSBvZiB0aGUgbW91c2UgcG9pbnRlcikKaW5pdGlhdGUgPSA8U3VwZXI+awoKLS0tCgo+
IHNvIGFwYXJ0IHRoZSBtb3ZlIGZyb20gY29uc29sZSB0byBndWkgbWF5YmUgZWFzaWVyLAo+IG5v
dCBzdXJlIGhvdyBpdCBjb21wZXRlIHdpdGgganVzdCB1YnVudHUgbWF0ZS4KCnRoYXQncyBhIG1h
dHRlciBvZiBvcGluaW9uLCBJIHJlc3BlY3QgeW91cnMgKGV2ZW4gdGhvdWdoIEkgYW0gbm90IHN1
cmUKeW91IGV2ZXIgdHJpZWQgU2xpbnQgdG8gY29tcGFyZSkuCgo+IE15IGFpbSB3aXRoIHRyeWlu
ZyB0byBtZXJnZSBWaW51eCBhbmQgU29uYXIgd2hpbGUgYWRkaW5nIG5ldyBjb250ZW50IHdvdWxk
Cj4gaGF2ZSBmaXhlZCB0aGF0IHN0dXBpZCBmcmFnbWVudGF0aW9uIHRoYXQgZG9lcyBub3RoaW5n
IHRvIGhlbHAgZW5kLXVzZXJzCj4gYnV0IGl0IGhhcyB0byBiZSBkb25lIHRoZSByaWdodCB3YXku
CgpHb29kIGx1Y2sgaW4gdGhlIGVuZGVhdm9yLsKgCgo+IFRoYXQgQXJjaGxpbnV4IGFjY2Vzc2li
aWxpdHkgdG9vbHMgcmFyZWx5IGJyZWFrIGlzbid0IGVub3VnaCwgZm9yIGEgYmxpbmQKPiB1c2Vy
IGhpcyBzeXN0ZW0gY2FuJ3QgYnJlYWssIGxpa2UgYSBwaG9uZSBmb3IgOTExLCBsaWtlIHR2IG9y
IGdhbWUKPiBjb25zb2xlcywgdGhpbmsgY3JpdGljYWwgc2VydmVyIHRoYXQgY2FuJ3QgYmUgb2Zm
bGluZSBmb3IgZGVjYWRlcyBvciBqdXN0IGEKPiBwYWNlbWFrZXIgaWYgeW91IGRvbid0IHVuZGVy
c3RhbmQgd2VsbCBob3cgaXQgbWF0dGVyLgoKV2hvIGV2ZXIgY2xhaW1lZCB0aGF0IEFyY2hsaW51
eCBmaXRzIHN1Y2ggdXNlIGNhc2VzPyBCdXQgSSBkbyBrbm93CmJsaW5kIHBlb3BsZSB3aG8gbGlr
ZSBpdC4gTm8gZGlzdHJpYnV0aW9uIGZpdHMgYWxsIHVzZXJzIGFuZCB1c2UgY2FzZXMuCgo+IE9i
dmlvdXNseSB0aGF0IHRoaXMgc3R1cGlkIGVsaXRlIHRoaW5raW5nIHRoYXQgbWFrZSBtZSBrZWVw
IG15IGpld2VscyB0aGF0Cj4gSSBjb3VsZCBjb250cmlidXRlIGNhdXNlIHRoZXkgd291bGQgYmUg
YmFkbHkgdXNlZCBhbmQgaXQgd291bGQgYmUgZG9uZSB0aGUKPiBvcHBvc2l0ZSB3YXkgdGhhdCB3
aGF0IHdvdWxkIG5lZWRlZCB0byBkbyAuLi4KCkkgd29uJ3QgY29tbWVudCBvbiB0aGlzIHN0YXRl
bWVudC4KCj4gTWljaGHDq2wgQ2Fyb24gQ291dHVyaWVyCgpIYXZlIGEgZ29vZCBkYXksCgpEaWRp
ZXIgU3BhaWVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

