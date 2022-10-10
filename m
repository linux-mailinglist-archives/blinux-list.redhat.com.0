Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C97325F98EC
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 09:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665385443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tLbzvGElzAW23X4Ts8djGmJpzkyG7WLvjPG+r1Iu9dU=;
	b=SE3Mdn8RZDqkq+AFSACXgbq9mi+2iIbGhK4BC6wlsZwC0d5K5Y2EUzLeZxsgcwwJU+UqX4
	sYkKGHPCaztjj9oha7+8UC1nlv73scT3CCmXEWojD4nXBmILNgHY7OcQnScI1ESYkq+LS/
	TxJpd6n6jtCvwml/miZCTsPhIBrJjEQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-271-OqJYHPnVOXWpnnYmoIP1wg-1; Mon, 10 Oct 2022 03:03:59 -0400
X-MC-Unique: OqJYHPnVOXWpnnYmoIP1wg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50B35811E81;
	Mon, 10 Oct 2022 07:03:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1B1FC68E25;
	Mon, 10 Oct 2022 07:03:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 06A611946A45;
	Mon, 10 Oct 2022 07:03:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 2D27D14C1614
Date: Mon, 10 Oct 2022 08:55:02 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is there a Fedora Espeakup Package?
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.6427.1665341560.6078.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.6772.1665385431.6082.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

W0RpZGllcl0KCj4gSSBoYWQgYSBsb29rIHRocm91Z2ggdGhlIEZlZG9yYSBwYWNrYWdlIHNlYXJj
aCB3ZWJwYWdlOgo+IGh0dHBzOi8vcGFja2FnZXMuZmVkb3JhcHJvamVjdC5vcmcvCj4gYW5kIGZv
dW5kIG5vdGhpbmcuCj4gTW9yZW92ZXIsIG5vIGNvbnNvbGUgc2NyZWVuIHJlYWRlciBhdCBhbGwg
aW4gRmVkb3JhLgoKWW91IGhhdmUgdGhlIEJSTFRUWSBzY3JlZW4gcmVhZGVyLCB3aGljaCBpcyBj
YXBhYmxlIG9mIG91dHB1dHRpbmcgc3BlZWNoIGFzIHdlbGwgYXMgYnJhaWxsZS4gUGVyc29uYWxs
eSBJJ3ZlIG9ubHkgdXNlZCBpdCBmb3IgYnJhaWxsZS4KCkxhcnMKCj4gTGUgMDkvMTAvMjAyMiDD
oCAxOTo1OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+
ID4gSGkgdGhlcmUsCj4gPiAKPiA+IEp1c3Qgd29uZGVyaW5nIGhvdyBjYW4gb25lIHJ1biBFc3Bl
YWt1cCBvbiBGZWRvcmE/IEkgYW0gb24gRmVkb3JhIDM2LCBidXQgY2FuJ3QKPiA+IGZpbmQgRXNw
ZWFrdXAgaW4gaXRzIHJlcG9zaXRvcmllcy4gU28gaG93IGRvIHdlIHJ1biB0aGUgU3BlYWt1cCB3
aGlsZSBpbiB0aGUKPiA+IGNvbnNvbGU/IFRyaWVkIGEgc2VhcmNoIHdpdGggeXVtIHNlYXJjaCBh
bmQgZG5mIHNlYXJjaCBmb3IgYm90aCBzcGVha3VwIGFuZAo+ID4gZXNwZWFrdXAsIGJ1dCB0byBu
byBhdmFpbC4gSSBldmVuIHRyaWVkIGNvbXBpbGluZyB0aGUgR2l0aHViIGVzcGVha3VwLCBidXQg
dGhlCj4gPiBtZXNvbiBidWlsZCBmYWlscyB3aXRoIG5vIGVzcGVhay1uZyBkZXBlbmRlbmN5IGZv
dW5kICh5ZXQgZXNwZWFrLW5nIGlzIGluc3RhbGxlZCkuCj4gPiAKPiA+IAo+ID4gSXMgdGhlcmUg
YW55b25lIHVzaW5nIHNwZWFrdXAgb24gRmVkb3JhIG9yIGFueSBvZiB0aGUgUmVkIEhhdCBkZXJp
dmF0aXZlcz8KPiA+IAo+ID4gCj4gPiBUaGFua3MuCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

