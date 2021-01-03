Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6AA322E8DDB
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 20:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609700407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FyZjNWixzFliSpRTGp4TvnQVhwcYP68Xmv72vO5ug30=;
	b=a2rD1rEo3H7K4sDkok9qbxqH0hf0e53IjUJ64Nw9hUlFj8yadShRE+IyWTeh1UActzkoGt
	aaIgZ3EtsX45422VY0ZHNUXcfozYWR/iGHweI7gxS0QBaB5Xz9YK7gDeK4ZfABYAMdtbNp
	Xvz4XuvBg7BqW7h+FcaJCvoYojs/BIQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-_vSBkpBTOr6jGWMG_TAgyg-1; Sun, 03 Jan 2021 14:00:04 -0500
X-MC-Unique: _vSBkpBTOr6jGWMG_TAgyg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FDB0800D55;
	Sun,  3 Jan 2021 19:00:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41B525D9D5;
	Sun,  3 Jan 2021 19:00:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C24418095C9;
	Sun,  3 Jan 2021 18:59:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103IxqOJ009746 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 13:59:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 66235111CB9A; Sun,  3 Jan 2021 18:59:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62194111CD5D
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:59:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CBEC185A794
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:59:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-29-6GXCsHoBOFqX3Znbs8dFaQ-1;
	Sun, 03 Jan 2021 13:59:47 -0500
X-MC-Unique: 6GXCsHoBOFqX3Znbs8dFaQ-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8C80FBE2FB
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:58:45 +0100 (CET)
Subject: Re: cli-party package
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
	<4693c1cb-57db-dd49-c2bd-1421d53467d8@slint.fr>
	<48a294bd-98cf-726f-29d4-604b1003f72a@slint.fr>
	<alpine.NEB.2.23.451.2101031348500.13609@panix1.panix.com>
Message-ID: <606d1c19-b898-32cb-7c18-a356e815bc92@slint.fr>
Date: Sun, 3 Jan 2021 19:59:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2101031348500.13609@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 103IxqOJ009746
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R2l0IHB1bGwgd29uJ3QgZ2V0IHlvdSB0aGUgZGVwZW5kZW5jaWVzLCB5b3UgZG8gaGF2ZSB0byBp
bnN0YWxsCnRoZW0gdXNpbmcgc2JvcGtnLgoKTGUgMDMvMDEvMjAyMSDDoCAxOTo1MSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEJlZm9yZSB0cnlpbmcg
dG8gcnVuIGNsaS1wYXJ0eSBzaW5jZSBpdCB3YXMgYWxyZWFkeSBpbnN0YWxsZWQgb24gbXkgCj4g
bWFjaGluZSwgSSBkaWQgYSBnaXQgcHVsbCBhbmQgbWF5YmUgc2luY2UgdGhlIGdpdCBwdWxsIGRp
ZG4ndCBmaW5kIAo+IGh0bWwydGV4dCBhbmQgeGlkZWwgdGhpcyBpcyB3aHkgSSdtIGhhdmluZyB0
aGUgcHJvYmxlbSB3aXRoIGh0bWwydGV4dCAKPiBub3cuIEknbGwgdHJ5IGFub3RoZXIgZ2l0IHB1
bGwgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoaXMgc2l0dWF0aW9uLgo+IAo+IAo+IAo+IE9u
IFN1biwgMyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiAKPj4gSSBqdXN0IGluc3RhbGxlZCB0aGUgZGVwcyB1c2luZyBzYm9wa2csIHRoZW4gZGlk
IHRoaXM6Cj4+IHdnZXQgCj4+IGh0dHBzOi8vZ2l0bGFiLmNvbS9zdG9ybWRyYWdvbjI5NzYvY2xp
LXBhcnR5Ly0vYXJjaGl2ZS9tYXN0ZXIvY2xpLXBhcnR5LW1hc3Rlci50YXIuZ3ogCj4+Cj4+IHRh
ciB4ZiBjbGktcGFydHktbWFzdGVyLnRhci5nego+PiBjZCBjbGktcGFydHkKPj4gLi9jbGktcGFy
dHkKPj4KPj4gSXQgd29ya2VkLgo+Pgo+PiBEaWRpZXIKPj4KPj4gTGUgMDMvMDEvMjAyMSA/IDE5
OjE3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPj4+IMKg
SGksCj4+Pgo+Pj4gwqBUaGlzIHBhZ2U6Cj4+PiDCoGh0dHBzOi8vZ2l0bGFiLmNvbS9zdG9ybWRy
YWdvbjI5NzYvY2xpLXBhcnR5Ly0vYmxvYi9tYXN0ZXIvY2xpLXBhcnR5Cj4+PiDCoG1lbnRpb25z
IGFzIGRlcGVuZGVuY2llczoKPj4+IMKgYmMKPj4+IMKgZGlhbG9nCj4+PiDCoGVzcGVhay1uZwo+
Pj4gwqBodG1sMnRleHQKPj4+IMKgc294Cj4+PiDCoHhpZGVsCj4+Pgo+Pj4gwqBBbGwgYXJlIGlu
Y2x1ZGVkIGluIFNsaW50IGJ1dCBodG1sMnRleHQgYW5kIHhpZGVsIHRoYXQgeW91IGNhbiBnZXQK
Pj4+IMKgdXNpbmcgc2JvcGtnCj4+Pgo+Pj4gwqBCZSBhd2FyZSB0aGF0IHhpZGVsIChtYWludGFp
bmVkIGJ5IEIuIFdhdHNvbiBAIGh0dHBzOi8vc2xhY2tidWlsZHNvcmcpCj4+PiDCoHJlcXVpcmVz
IGZwYywgYWxzbyBhdmFpbGFibGUgZm9tIFNCby4KPj4+Cj4+PiDCoEJlc3QgcmVnYXJkcywKPj4+
Cj4+PiDCoERpZGllcgo+Pj4gwqAtLQo+Pj4gwqBEaWRpZXIgU3BhaWVyCj4+PiDCoFNsaW50IG1h
aW50YWluZXIKPj4+Cj4+PiDCoExlIDAzLzAxLzIwMjEgPyAxODowNSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9jcml0wqA6Cj4+Pj4gwqBJdCB0dXJucyBvdXQgdGhlIHBh
Y2thZ2UgbmVlZGVkIHhpZGVsIGFuZCBodG1sMnRleHQuwqAgSSBmb3VuZCB0aGF0IAo+Pj4+IG91
dCBieQo+Pj4+IMKgYW5hbHl6aW5nIGEgdHlwZXNjcmlwdCBmaWxlIGluIHdoaWNoIGNsaS1wYXJ0
eSB3YXMgcnVuLsKgIE9ubHkgCj4+Pj4gcHJvYmxlbSBpcwo+Pj4+IMKgSSBpbnN0YWxsZWQgaHRt
bDJ0ZXh0IG9uIHNsaW50IGFuZCB0aGUgY2xpLXBhcnR5IGdhbWUgZG9lc24ndCBmaW5kCj4+Pj4g
wqBodG1sMnRleHQuwqAgUHl0aG9uIGlzIGluIHN1Y2ggYSBtZXNzIG5vdyBsb3RzIG9mIHRoaW5n
cyBpbmNsdWRpbmcgcGlwCj4+Pj4gwqBzZWFyY2hlcyBubyBsb25nZXIgd29yaywgc28gaXQgbWF5
IGJlIG5lY2Vzc2FyeSB0byBnaXZlIHB5dGhvbiBzb21lIAo+Pj4+IHRpbWUKPj4+PiDCoHRvIHNv
cnQgaXRzIG1lc3MgYW5kIGZvciBkaXN0cm9zIHRvIGdldCB0aGUgcmVwbGFjZW1lbnQgcGFja2Fn
ZXMgCj4+Pj4gZm9yIGFsbAo+Pj4+IMKgb2YgdGhvc2UgZGVwcmVjYXRlZCBwYWNrYWdlcy4KPj4+
Pgo+Pj4+Cj4+Pj4gwqBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+IMKgQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gwqBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4gwqBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pgo+Pj4KPj4+Cj4+PiDCoF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+PiDCoEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4g
wqBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiDCoGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

