Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6924FADC6
	for <lists+blinux-list@lfdr.de>; Sun, 10 Apr 2022 14:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649592975;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lBN8lk8tgmQCo9wu3zZi2z9vcTPL+Vuz2C2rjt81R3s=;
	b=O1lvkVhEJq7QqH4UmZITCnlw1ppV9Ib5q4HuYN/6k/BiUriaq4V7Moo22u+UArWmhe9ukZ
	UGAF8p/dqPCv3/84qxDmGnh361AHGQKUv5MRNdFlRZNJxZioGMKjF8CdRuBmMSW9GTx5Ac
	zn72+lnivKDjC1Wh2ez8DTg/NFDSRLU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-kuSLrIssMX2D_5dbPm-6mA-1; Sun, 10 Apr 2022 08:16:12 -0400
X-MC-Unique: kuSLrIssMX2D_5dbPm-6mA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C58092999B26;
	Sun, 10 Apr 2022 12:16:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 51C3E407F76B;
	Sun, 10 Apr 2022 12:16:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7FFDD1940365;
	Sun, 10 Apr 2022 12:16:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm history vs show hidden
Date: Sun, 10 Apr 2022 14:15:55 +0200
References: <mailman.7629.1649584333.111204.blinux-list@redhat.com>
In-Reply-To: <mailman.7629.1649584333.111204.blinux-list@redhat.com>
To: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.7593.1649592964.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpXZWxsIHRvIGV4cGxhaW4gd2hhdCB5b3Ugc2VlLCB5b3UgbmVlZCB0byB1bmRlcnN0
YW5kIGhvdyBzaG9ydGN1dHMgb24gYW4gY29tbWFuZCBsaW5lIGFwcGxpY2F0aW9uIHdvcmsuClRo
ZSBjb21tYW5kbGluZSByZWFkcyBhbnkgaW5wdXQgZnJvbSBTVERJTi4gVGhpcyBpcyBhbHNvIHZh
bGlkIGZvciBzaG9ydGN1dHMuIFRoZSBvcGVyYXRpbmcgc3lzdGVtIHRyYW5zbGF0ZXMgc29tZSAo
bm90IGFsbCwgZGVwZW5kaW5nIG9uIHRlcm1pbmFsIGNhcGFiaWxpdGllcykgaW5wdXQgdG8gYSBz
ZXF1ZW5jZSBvZiBhc2NpaSBjb2Rlcy4gVGhpcyBzZXF1ZW5jZXMgYXJlIHNlbnQgdG8gU1RESU4g
dGhlbi5UaGlzIHNlcmllcyBzdGFydHMgd2l0aCBhbiBzcGVjaWFsIGFzY2lpIGNoYXJhY3Rlciwg
dGhlIEVzY2FwZSBjb2RlLiBUaGlzIGlzIHdoeSB0aGlzIHNlcXVlbmNlcyBhcmUgbmFtZWQgZXNj
YXBlIHNlcXVlbmNlcy4gSG93IG1hbnkgZXNjYXBlIHNlcXVlbmNlcyBhcmUg4oCedHJhbnNsYXRl
ZOKAnCBvciDigJ51bmRlcnN0YW5k4oCcIGRlcGVuZHMgb24gdGhlIHVzZWQgdGVybWluYWwgc3Rh
bmRhcmQgKFRUWSB1c2VzIGFzIGZhciBhcyBpIGtub3cgVlQxMDAgc3RhbmRhcmQsIGNvcnJlY3Qg
bWUgaWYgaSBtIHdyb25nLCB0ZXJtaW5hbCBlbXVsYXRvcnMgY2FuIG9mdGVuIGVtdWxhdGUgdmFy
aW91cyBraW5kIG9mIHN0YW5kYXJkcywgZGVwZW5kaW5nIG9uIHRoZSBlbXVsYXRvciBhbmQgY29u
ZmlndXJhdGlvbikuClRoZSBpc3N1ZSB5b3Ugc2VlIGhlcmUgaXMgdGhlIGZhY3QgdGhhdCBzb21l
IG9mIHRoZSBlc2NhcGUgIHNlcXVlbmNlcyBkbyBub3QgaGF2ZSBhIHByaW50YWJsZSByZXByZXNl
bnRhdGlvbi4gRm9yIHRoaXMgdGhlcmUgYXJlIHZhcmlvdXMgY2FzZXMgd2hlcmUgcHJpbnRhYmxl
IHNlcXVlbmNlcyBkZWZpbmVkIGZvciB0aGUgbm9uIHByaW50YWJsZSByZXByZXNlbnRhdGlvbi4g
TG9uZyB0aGluZyBzaG9ydDogaW4geW91ciBjYXNlLCBDdHJsICsgaCBpcyB0aGUgcHJpbnRhYmxl
IGFzY2lpIHJlcHJlc2VudGF0aW9uIG9mIGJhY2tzcGFjZS4gU28gYW4gY29tbWFuZCBsaW5lIGFw
cGxpY2F0aW9uIGNhbiBub3QgbWF0ZSBhIGRpZmZlcmVuY2UgYmV0d2VlbiBjdHJsICsgaCBhbmQg
YmFja3NwYWNlIGF0IGFsbCAoIHNvIGl0cyBhIGxpbWl0YXRpb24gb2YgdGhlIGRlZXBlciBsZXZl
bCBvZiB0ZXJtaW5hbCBhbmQgb3BlcmF0aW5nIHN5c3RlbSwgbm90IGFuIGlzc3VlIG9mIGRyYWdv
bkZNKQpZb3UgY2FuIHNlZSB0aGlzIGluIHBsYWluIGJhc2gsIHZpbSBvciBuYW5vIGFzIHdlbGwg
KGFuZCBhbnkgb2RlciBjb21tYW5kbGluZSBhcHBsaWNhdGlvbilsLCB0eXBlIHNvbWV0aGluZywg
cHJlc3MgY3RybCArIGgsIGl0IGJlaGF2ZXMgbGlrZSBiYWNrc3BhY2UgYW5kIHdpbGwgZGVsZXRl
IHRoZSBjaGFyYWN0ZXIgbGVmdCB0byB0aGUgY3Vyc29yLgpTZWUgaGVyZSBmb3IgYSBsaXN0IG9m
IChzb21lPykgb2YgdGhvc2Ug4oCeZHVwbGljYXRlc+KAnC4gCgpodHRwczovL3d3dy5pYm0uY29t
L2RvY3MvZW4vU1NMVEJXXzIuNC4wL2NvbS5pYm0uem9zLnYycjQuYnB4YTQwMC9rczEuaHRtCgpC
dXQgbGlrZSBub3RlZCwgdGhpcyBkZXBlbmRzIGhlYXZpbHkgb24gdGhlIFRlcm1pbmFsLgoKU29y
cnkgbXkgZnJpZW5kLCB0aGVyZSBpcyBub3QgbXVjaCBpIGNhbiBkbyBoZXJlLgoKV2hhdCBjYW4g
d2UgZG8gbm93PwpXZWxsLCBhbGwgd2UgY2FuIGRvIGlzIGNob29zaW5nIHdoYXQgaXMgbW9yZSBp
bXBvcnRhbnQgZm9yIHlvdSBhbmQgcmViaW5kIGJhY2tzcGFjZSDigJ5LRVlfQkFDS1NQQUNF4oCc
ICh3aGF0IGlzIGN1cnJlbnRseSBib3VuZCB0byBsZWF2ZSBlbnRyeSwgd28gbW92ZXMgdG8gcGFy
ZW50IGZvbGRlcikgdG8gdG9nZ2xlIGhpZGRlbiAoYW5kIHVuYmluZCBvciByZWJpbmQgbGVhdmUg
ZW50cnkgdGhlbiApIG9yIHVzZSBhbm90aGVyIHNob3J0Y3V0IGZvciBoaWRkZW4uClNlZSBoZXJl
IGluIHNldHRpbmdzOgpLRVlfQkFDS1NQQUNFPWxlYXZlX2VudHJ5CuKApgpeW0g9dG9nZ2xlX2hp
ZGRlbgoKQ2hlZXJzIGNocnlzCgo+IEFtIDEwLjA0LjIwMjIgdW0gMTE6NTIgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoK
PiAKPiDvu79TbyBxdWljayBxdWVzdGlvbiBDaHJ5cy4uLgo+IAo+IEknbSB0cnlpbmcgdG8gaGF2
ZSBoaXN0b3J5IHN3aXRjaGVkIHRvIGN0cmwrSCBvbiBteSBjb3B5IG9mIERyYWdvbmZtLCB0bwo+
IGxpbmUgdXAgbW9yZSB3aXRoIGhvdyBOYXV0aWx1cy9DYWphIGRvZXMgaXQuIEhvd2V2ZXIgdGhh
dCBzaG9ydGN1dCBzZWVtcwo+IGhhcmRjb2RlZCBpbiB3aXRoIG5vIHdheSB0byBjaGFuZ2UgaXQg
aW4gdGhlIGNvbmZpZyBmaWxlLiBJJ20gdHJ5aW5nIHRvCj4gZml4IGl0IHNpbmNlIGFsdCtIIGJy
aW5ncyB1cCBhIHRlcm1pbmFsJ3MgaGVscCBtZW51IGFuZCBJJ2QgbGlrZSBjdHJsK0gKPiB0byBz
aG93L2hpZGUgaGlkZGVuIGZpbGVzIHNpbmNlIHRoYXQncyBhIGNvbW1vbiBlbm91Z2ggc2hvcnRj
dXQgb24KPiBkZXNrdG9wIGZpbGUgbWFuYWdlcnMgc28gd2h5IG5vdCBoYXZlIGl0IGluIERyYWdv
bkZNPwo+IAo+IFNvIHdoZXJlIGRvIEkgbmVlZCB0byBsb29rIHRvIHN3aXRjaCB0aGUgZnVuY3Rp
b24gb2YgY3RybCtIIGluIHRoZQo+IHByb2dyYW0/IEN1cnJlbnRseSBpdCBicmluZ3MgdXAgdGhl
IGxvY2F0aW9uIGJhciwgcGFnZSAxLzIgYW5kIGRvZXNuJ3QKPiBzaG93IG9yIGhpZGUgaGlkZGVu
IGZvbGRlcnMsIGluc3RlYWQgZ29pbmcgYmFjayBvbmUgc3RlcCBkZXNwaXRlIG5vdAo+IGJlaW5n
IGRlZmluZWQgYXMgc3VjaCBpbiB0aGUgY29uZmlnIHNldHRpbmdzCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

