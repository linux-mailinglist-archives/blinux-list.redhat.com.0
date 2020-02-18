Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3851627EE
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 15:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582035470;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NO/EGvpwCHxK/xB5W5FDvlyC+jpLhECkWgT0RhN7//c=;
	b=L5HqlMPmfe4vUBX937oNpWcoGENsLq0GYH4uiqnsIx6gVa74Idz1X6H0qDRY5hIj7uiU+Y
	WsfB8ufqr4BshQuGrUW9ABG5zSJCPeDkh7i0xs2LgGq7lrxz3w+JECV9zr0bIiL61kCxXl
	e9sUtkGk/81taQa6hwPaWtCvLmFCSWI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-M0BDak1sMHqgjVmf3eDmYA-1; Tue, 18 Feb 2020 09:17:44 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F42D13F6;
	Tue, 18 Feb 2020 14:17:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DC6A90533;
	Tue, 18 Feb 2020 14:17:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12D7D35AF1;
	Tue, 18 Feb 2020 14:17:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01IEHWUc024959 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 09:17:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3C5DE215AB05; Tue, 18 Feb 2020 14:17:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3798E2026D69
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 14:17:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C90A9801E70
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 14:17:29 +0000 (UTC)
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-72-baspMwvtMYG0VqMUmYjKdw-1; Tue, 18 Feb 2020 09:17:26 -0500
Received: from darkstar.slint.fr (unknown [176.172.247.100])
	(Authenticated sender: appartement.cdm)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id DEF0B19F5CD
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 15:17:24 +0100 (CET)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
	<CAO2sX32QD1my9ZTYN=uX864Q8bc+fqb1Ae90MQqrdjaZ9_QBOA@mail.gmail.com>
Message-ID: <85a0492b-09f3-88d9-4a9d-4ba69ad6830c@free.fr>
Date: Tue, 18 Feb 2020 15:17:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX32QD1my9ZTYN=uX864Q8bc+fqb1Ae90MQqrdjaZ9_QBOA@mail.gmail.com>
Content-Language: fr
X-MC-Unique: baspMwvtMYG0VqMUmYjKdw-1
X-MC-Unique: M0BDak1sMHqgjVmf3eDmYA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01IEHWUc024959
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpEaWRpZXIgU3BhaWVyLCBTbGludCBtYWludGFpbmVyIGhlcmUuCgpTbGludCBpcyB0
aGUgbW9zdCBhY2Nlc3NpYmxlIExpbnV4IGRpc3RyaWJ1dGlvbiBvdXQgb2YgdGhlIGJveC4KCkl0
IGNhbiBiZSBpbnN0YWxsZWQgd2lob3V0IGFueSBzaWdodGVkIGhlbHAsIGF0IGxlYXN0IGJ5IHNv
bWVvbmUgbm90CmFmcmFpZCB0byB0eXBlIGEgZmV3IGNvbW1hbmRzIGFuZCByZWFkIHRoZXNlIGRv
Y3VtZW50cyBiZWZvcmUgaW5zdGFsbGluZzoKaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZf
NjQvc2xpbnQtMTQuMi4xL1JFQURNRS5pbnN0YWxsYXRpb24KaHR0cDovL3NsYWNrd2FyZS51ay9z
bGludC94ODZfNjQvc2xpbnQtMTQuMi4xL2RvYy9BY2Nlc3NpYmlsaXR5L0FjY2Vzc2liaWxpdHkK
Ckkgd2lsbCBiZSBoYXBweSB0byBoZWFyIGRpZmZlcmluZyBvcGluaW9ucywgYXMgbG9uZyBhcyB0
aGV5IGNvbWUgZnJvbQpibGluZCBwZW9wbGUgd2hvIHRyaWVkIHRvIGluc3RhbGwgYW5kIHVzZSBT
bGludCA8c21pbGU+CgpCZXN0IHJlZ2FyZHMsCgpEaWRpZXIKwqAKCkxlIDE4LzAyLzIwMjAgw6Ag
MTU6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJ
J3ZlIG5ldmVyIHVzZWQgQXJjaCBvciBhbnkgb2YgaXRzIGRlcml2YXRpdmVzLCBzbyBJIGNhbid0
IHJlYWxseSBoZWxwCj4gd2l0aCB0aGUgb3JpZ2luYWwgcG9zdGVyJ3MgcHJvYmxlbS4uLiB0aG91
Z2ggSSB3b3VsZCd2ZSB0aG91Z2h0IHRoZQo+IG9sZCBLZXJuZWwgd291bGQndmUgYmVlbiBsZWZ0
IGluIHBsYWNlIGFuZCBzaWdodGVkIGFzc2lzdGVuY2UgY291bGQgYmUKPiB1c2VkIHRvIHNlbGVj
dCBpdCBmcm9tIEdSVUIgb3Igd2hhdGV2ZXIgYWx0ZXJuYXRpdmUgYm9vdCBsb2FkZXIgb25lIGlz
Cj4gdXNpbmcuCj4KPiBJIGRvIGZpbmQgdGhlIGhhcnNoIGNyaXRpY2lzbSBvZiBBcmNoIGFzIGFu
IGFjY2Vzc2libGUgTGludXggb3B0aW9uCj4gYW5kIHRoZSByZWNvbW1lbmRhdGlvbiBvZiBEZWJp
YW4gU3RhYmxlIGFuZCBVYnVudHUgaW5zdGVhZCBhIGJpdAo+IGV5ZWJyb3cgcmFpc2luZyB0aG91
Z2guIFNlZW1zIGxpa2UgaGFsZiB0aGUgaXNzdWVzIHBlb3BsZSBoYXZlIG9uIHRoZQo+IE9yY2Eg
TWFpbGluZyBsaXN0IGNvbWUgZG93biB0byBEZWJpYW4gU3RhYmxlIGFuZCBVYnVudHUoYW5kIGVz
cGVjaWFsbHkKPiAxOC4wNCkgaGF2aW5nIG91dC1vZi1kYXRlIGFjY2Vzc2liaWxpdHkgc3RhY2tz
LCBhbmQgZnJvbSB3aGF0IEkndmUKPiBoZWFyZCBvdmVyIHRoZSB5ZWFycyBmcm9tIHZhcmlvdXMg
c291cmNlcywgQXJjaCBzZWVtcyB0byBiZSB0aGUgbW9zdAo+IHBvcHVsYXIgYWx0ZXJuYXRpdmUg
dG8gRGViaWFuIGFzIGEgYmFzZSBmb3IgY3VzdG9tLAo+IGFjY2Vzc2liaWxpdHktZm9jdXNlZCBk
aXN0cm9zLgo+Cj4gQWRtaXR0ZWRseSwgSSdkIHByb2JhYmx5IHJlY29tbWVuZCBEZWJpYW4gc3Rh
YmxlIHRvIGEgc2lnaHRlZCBMaW51eAo+IG5ld2JpZSwgYnV0IGFjY2Vzc2liaWxpdHkgaXMgb25l
IGFyZWEgd2hlcmUgRGViaWFuJ3MgZm9jdXMgb24KPiBzdGFiaWxpdHkgb3ZlciBjdXR0aW5nIGVk
Z2UgZG9lcyBtb3JlIGhhcm0gdGhhbiBnb29kLi4uIEknZCBwcm9iYWJseQo+IHJlY29tbWVuZCBL
bm9wcGl4IHJ1bm5pbmcgaW4gQWRyaWFuZSBtb2RlIHRvIGEgYmxpbmQgcGVyc29uIGludGVyZXN0
ZWQKPiBpbiBsZWFybmluZyBMaW51eCwgYnV0IGl0J3MgYmVlbiB5ZWFycyBzaW5jZSB0aGVyZSB3
ZXJlIGFueSBvZmZpY2lhbAo+IEtub3BwaXggaW1hZ2VzIHdpdGggQWRyaWFuZSBhcyB0aGUgZGVm
YXVsdCBib290IG9wdGlvbiwgYW5kIHdoaWxlIGl0J3MKPiBhIG9uZSBsaW5lIGVkaXQgdG8gYSBz
aW5nbGUgdGV4dCBmaWxlIHdpdGhpbiB0aGUgSVNPIHRvIG1ha2UgQWRyaWFuZQo+IHRoZSBkZWZh
dWx0LCBJIGtub3cgbm8gbWVhbnMgb2YgZGlyZWN0bHkgZWRpdGluZyBhbiBJU08sIGFuZCB0aGUK
PiBtZXRob2QgSSd2ZSBiZWVuIHVzaW5nIHRvIG1ha2UgQWRyaWFuZSBEVkRzIG9mIG1vdW50LCBj
b3B5LCBlZGl0LAo+IHJlYnVpbGQsIGJ1cm4gaXMgcmF0aGVyIGludm9sdmVkLi4uIFBsdXMsIEtu
b3BwaXggaXMgb25seSByZWFsbHkKPiBkZXNpZ25lZCB3aXRoIGxpdmUgdXNlIGluIG1pbmQsIHNv
IHdoaWxlIGl0J3MgYW1hemluZyBmb3Igc3lzdGVtCj4gcmVzY3VlIG9yIGhhdmluZyBhIHBvcnRh
YmxlIGNvcHkgb2YgTGludXgsIGl0J3Mgbm90IHRoZSBiZXN0IGZvciBhCj4gcHJpbWFyeSBPUy4K
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

