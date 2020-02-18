Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 6095316262D
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 13:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582029160;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rNcPfUdmE/JTlxNpufhPyFzA0h9gjVsTmmjNCxNT+b0=;
	b=DBx2SDPuu5KQYlQ4sbW+psTQ87T4GlWBaoe4ashARDU8a1nt/sg/4jnL+UvW5eZ8F/KiS/
	BKJHC55HloIjEi/nz8ZpPrrwMls5STf+TZyM1jEP5j5kpNO3fnhC/z8KTc3dk0mjo5rtyp
	SvB0yO1GZry+nsJ62N8w1urzaAvY/So=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-iW6CFql5OGKpqyunzB-Ocg-1; Tue, 18 Feb 2020 07:32:36 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BD558010F3;
	Tue, 18 Feb 2020 12:32:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39BC38B561;
	Tue, 18 Feb 2020 12:32:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8FD3B35AFF;
	Tue, 18 Feb 2020 12:32:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01ICWJU2018051 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 07:32:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C05062166B2A; Tue, 18 Feb 2020 12:32:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB9BC2166B28
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 12:32:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 363C5101D229
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 12:32:17 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-344-VTRdIaxiMIKKC6fD8swFnA-1; Tue, 18 Feb 2020 07:32:14 -0500
Received: by mail-wr1-f54.google.com with SMTP id n10so21773302wrm.1
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 04:32:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=WDA5/SxWCIgSmVUWfrZcCTGC+iUfitB1A4O58MyMEzo=;
	b=r9GDKSNkTfbfmyn9qKqvaDb+G/a6tfJ3zYjAyakvqiRh/n5M6yb5y6adhg/4f1eWXk
	WUqQU6e2xgESDjG40Nq+JbzeDKhl+EHNmCMfZNbwB0487hyb7yB/t0TUbn9PQq/AZ9cA
	JviRnQoUadw12OBPx+mXXWaMcjyBnCWJH44IqJCZaMUBEjeazfo/WPGH9HkUrIFBgqaq
	8T3n8HvbVkR3hz+r1dOwLsRI8A8WteOGJMiTGjWRjeXkXhj53cwQTjsKprw4eu/YGSvc
	5NPh7aRNGbTCrq9y7W2NlWncFONYeerF5Qt74iZ0L3lYX5n9ZEXY3wN9ZatUefjp+X4r
	i45A==
X-Gm-Message-State: APjAAAUdzBxhVebJCpHv4jRMjR/1wWkBXvBnW5FlvYg9E9TyM7ClWLMM
	uBcG1zIbZo2+Gk6g6IdWF/WLQF3RcLBckBHwZRb5JA==
X-Google-Smtp-Source: APXvYqxhQPo8oZHWVc/ZkNdBozrzeUZX0N4jM0VLjm/N16yZowcq+dURYiGyguFrhhwezhLwiN0ijX1xbaX4mDjQb08=
X-Received: by 2002:a05:6000:118e:: with SMTP id
	g14mr30406818wrx.39.1582029132566; 
	Tue, 18 Feb 2020 04:32:12 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
Date: Tue, 18 Feb 2020 07:32:04 -0500
Message-ID: <CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
Subject: Re: early warning I hope
To: blinux-list <blinux-list@redhat.com>
X-MC-Unique: VTRdIaxiMIKKC6fD8swFnA-1
X-MC-Unique: iW6CFql5OGKpqyunzB-Ocg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgYnV0IEFyY2hsaW51eCBpcyBub3Qgc29tZXRoaW5nIHRvIHVzZSBmb3Igc29tZW9uZSBi
bGluZCB1c2luZyBMaW51eCwKRGViaWFuIHN0YWJsZSBtYXliZSB3aXRoIGJhY2twb3J0cywgYXBw
aW1hZ2VzLCBmbGF0cGFrcyBhbmQgc25hcHMgcGFja2FnZXMKaWYgbmVlZGVkIHdvdWxkIGJlIGJl
dHRlciB3aXRoIE1hdGUgaGF2aW5nIENvbXBpeiB1bmRlciBpZiBsb3cgdmlzaW9uLApnbm9tZS1v
cmNhLCBicmx0dHksIGVzcGVhayBhbmQgc28gb24gYXJlIG9idmlvdXNseSByZWNvbW1lbmRlZC4K
CkRlYmlhbiB0ZXN0aW5nIGlzIGFsc28gYW4gb3B0aW9uIGJ1dCBJIHdvdWxkIGF2b2lkIGlmIHBv
c3NpYmxlLgoKVWJ1bnR1IE1hdGUgaG93ZXZlciBoYXMgdGhlIHRvcCBvdXQtb2YtdGhlLWJveCBh
Y2Nlc3NpYmlsaXR5IGF0IGEgcG9pbnQKdGhhdCBibGluZCB1c2VycyBjb3VsZCBuZWFybHkgaW5z
dGFsbCBsaW51eCBhbG9uZSB3aXRob3V0IGFueSBoZWxwLCB0aGVpcgptYXRlIG1lbnUgZnJvbSBz
b2x1cyBJIHRoaW5rIGdpdmUgdGhlbSB0aGVpciBlZGdlLCBJIHdvbmRlciBpZiBEZWJpYW4gY291
bGQKdXNlIGl0LgoKSSB3YXMgd29ya2luZyBvbiBsaW51eCBhY2Nlc3NpYmlsaXR5IHdpdGhvdXQg
YmVpbmcgYSBjb2RlciwgSSB0cmllZCB0byBnZXQKdmludXggYW5kIHNvbmFyIGxpbnV4IHRlYW0g
b3Igc2ltaWxhciB0byBtb3ZlIHRvIGEgZGViaWFuIGJhc2UgaG9waW5nIHRvCmFkZCBhIGZldyBm
ZWF0dXJlcyB0aGF0IEkga2VwdCBoaWRkZW4gc2luY2UgSSBuZWVkIHRvIHB1c2ggYSByZXN1bHQg
YXMgYQp3aG9sZSB0byBmaXggdmFyaW91cyBMaW51eCBpc3N1ZXMuCgpVbnRpbCB0aGVuIEkgc2Fk
bHkgaGF2ZSB0byBhdm9pZCB0byBjb250cmlidXRlIG9yIEkgd291bGQganVzdCBtYWtlIGl0Cndv
cnNlLgoKTGUgbWFyLiAxOCBmw6l2ci4gMjAyMCAwNDowNywgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IGEgw6ljcml0IDoKCj4gSSBq
dXN0IHJhbiBhIGtlcm5lbCB1cGRhdGUgYSBmZXcgbWludXRlcyBhZ28gb24gYXJjaGxpbnV4IGFu
ZCB0cmllZAo+IHJlYm9vdGluZy4KPiBTb21lIHV1aWQgY2Fubm90IGJlIGZvdW5kIGFuZCBJIGdv
dCB0aHJvd24gaW50byBhbiBlbWVyZ2VuY3kgc2hlbGwuICBBbGwKPiBvZiB0aGlzIG9mIGNvdXJz
ZSB3aXRob3V0IHNjcmVlbiByZWFkZXIgd29ya2luZy4KPiBJIGZvdW5kIHRoaXMgb3V0IGFzIGEg
cmVzdWx0IG9mIHRhbGtpbmcgdG8gYSBiZSBteSBleWVzIHZvbHVudGVlciBvbiB0aGUKPiBwaG9u
ZSBhZnRlciBzaGUgZXhhbWluZWQgbXkgc2NyZWVuLgo+IEkgaGF2ZSBubyBpZGVhIHdoYXQgY2F1
c2VkIHRoYXQgYW5kIGhhdmUgbWluaW1hbCB1c2Igc3R1ZmYgY29ubmVjdGVkIHRvCj4gdGhlIGNv
bXB1dGVyLiAgSSBoYWQgZGlzY29ubmVjdGVkIGEgZmxhc2ggZHJpdmUgZnJvbSB0aGUgY29tcHV0
ZXIgdGhpbmtpbmcKPiB0aGUgZmxhc2ggZHJpdmUgd2FzIHRoZSBjYXVzZSBvZiB0aGUgbWlzc2lu
ZyB1dWlkIGJ1dCB0aGF0IHdhc24ndCB0aGUKPiBjYXNlLgo+IEZvcnR1bmF0ZWx5IEkgdXNlIHNv
bGlkIHN0YXRlIGRyaXZlcyBhbmQgaGF2ZSBhbm90aGVyIGRpZmZlcmVudCBzeXN0ZW0gb24KPiBv
bmUgb2YgdGhlbSBvciBJJ2QgYmUgb2ZmbGluZSBmb3IgYSB3aGlsZS4KPiBUaGUgdm9sdW50ZWVy
IGRpZG4ndCByZWFkIG1lIHRoZSBsb25nIG51bWJlciBhZnRlciB0aGF0IHV1aWQgZXJyb3IuCj4K
Pgo+Cj4gLS0KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

