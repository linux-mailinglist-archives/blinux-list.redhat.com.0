Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DAB496E39
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jan 2022 23:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642892097;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MBFXM7D6l39gzLTOojIba7EGX+/UB9H894vWp2+efpQ=;
	b=XywdI6SqBuHPMGfMrIdzp2npktww/qgsEvoI4jFIlItGmhySDkL2zwZawx9uFvw+GzhdTK
	bQeih9XwFJB6B4Q5E1yaLo7n18kkNgnLCix5gDHV57VCpaOrJIr2aIbnwJCGlU6maxiWtk
	QYQ5GJbk/PsF8mh4UuDRvpqbZ7n2exI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-114-K5yPoP0PO1KNSqW9AGOKVg-1; Sat, 22 Jan 2022 17:54:53 -0500
X-MC-Unique: K5yPoP0PO1KNSqW9AGOKVg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00DB61006AA4;
	Sat, 22 Jan 2022 22:54:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0907B5E26B;
	Sat, 22 Jan 2022 22:54:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1715E1809CB8;
	Sat, 22 Jan 2022 22:54:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20MMsgGB015354 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Jan 2022 17:54:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC6E541F351; Sat, 22 Jan 2022 22:54:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E84BF40146E
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 22:54:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B0103C01D8A
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 22:54:41 +0000 (UTC)
Received: from hypra.fr (hypra.fr [62.210.38.35]) by relay.mimecast.com with
	ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-651-QwnNZ5TbMTqWLjrzhuit0w-1; Sat, 22 Jan 2022 17:54:08 -0500
X-MC-Unique: QwnNZ5TbMTqWLjrzhuit0w-1
Received: from [192.168.0.21] (unknown [78.202.86.116])
	by hypra.fr (Postfix) with ESMTPSA id 615AF586148
	for <blinux-list@redhat.com>; Sat, 22 Jan 2022 23:45:30 +0100 (CET)
Message-ID: <ede53852-20fa-cbe7-613a-5ff3b4065c9c@debian.org>
Date: Sat, 22 Jan 2022 23:45:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101
	Thunderbird/98.0a1
To: blinux-list@redhat.com
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
In-Reply-To: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20MMsgGB015354
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCkh5cHJhIHByb3ZpZGVzIDE0IGluY2ggbWFjaGluZXMsIHdpdGggRGViaWFuIGFuZCBhbGwg
c2V0IGZvciAKYWNjZXNzaWJpbGl0eSAoLU9yY2EsIGdvb2Qgdm9pY2UsIE1hdGUgZGVza3RvcCwg
RmlyZWZveCwgTGlicmVvZmZpY2UsIApUaHVuZGVyYmlyZCwgZXRjKS4gVGhleSBwcm92aWRlIGFs
c28gYSBoaWdoIGh1bWFuIHN1cHBvcnQgdG8gbGVhcm4gYW5kIAptYWludGFpbiB0aGUgbWFjaGlu
ZS4gSnVzdCB0aGUgbWFjaGluZSBpcyBub3QgcG93ZXJmb2wgKE5MNTFHVSBmb3IgMTUgaW5jaCku
CgpSZWdhcmRzCgoKSmVhbi1QaGlsaXBwZSBNRU5HVUFMCkRlYmlhbiBEZXZlbG9wZXIgbm9uIHVw
bG9hZGluZwpDb21tdW5pdHkgdGVhbSBtZW1iZXIKQWNjZXNzaWJpbGl0eSB0ZWFtIG1lbWJlcgpk
ZWJpYW4tbDEwbi1mcmVuY2ggdGVhbSBtZW1iZXIKUHJlc2lkZW50IG9mIERlYmlhbiBGcmFuY2Ug
bm9uLXByb2ZpdCBvcmdhbml6YXRpb24KCkxlIDIyLzAxLzIwMjIgw6AgMjE6MTYsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJIGFtIGxvb2tpbmcgZm9y
IGEgTGludXggbWFjaGluZSB0byB1c2UgaW4gZ3JhZHVhdGUgQ1MgY291cnNlcy4gSSBwcm9iYWJs
eQo+IHdhbnQgVWJ1bnR1IG9yIGFub3RoZXIgY29tbW9uIGRpc3RybyB0aGF0IGNvbWVzIHdpdGgg
dGhlIHNjcmVlbiByZWFkZXIgKEkKPiBhc3N1bWUgT3JjYSkgYW5kIG90aGVyIGExMXkgc3R1ZmYg
YWxyZWFkeSBpbnN0YWxsZWQuIEkgbGlrZSBzbWFsbCwgbGlnaHQKPiBsYXB0b3BzIChzaW5jZSBJ
IGRvbid0IHVzZSB0aGUgc2NyZWVuKSB0aGF0IGhhdmUgZGVjZW50IG1lbW9yeSBhbmQgYmF0dGVy
eQo+IGxpZmUuIFdoaWNoIG1hY2hpbmVzIGFyZSB5b3VyIGZhdm9yaXRlcy4KPiAKPiBUaGFua3Mg
Zm9yIHRoZSB0aXAgb24gVm1XYXJlIHRoZSBvdGhlciBkYXksIEJUVy4KPiAKPiBBbWFuZGFbMF0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

