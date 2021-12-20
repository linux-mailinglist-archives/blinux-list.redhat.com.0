Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6021947B1E8
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 18:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640020388;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uCb9DUgOaLeDW6wEylPDZPBJ4TB0nK+R01tGVyKu8cs=;
	b=G+3PXhtFp2/YRa/cuhd5/WluLAL9cTheJaVPjyKH6D5e7b7+I7bx1u9voclomyi3z5K/JS
	Qum/pVUKiuJhAX9KTH87ZbeKeZJlzMbkjMXIYR3ZP9uQxrwJcN1XTNad4weSGAcZo77E8J
	Na3XvuYEfbfkL2dlMPKY0OiEnLe/fd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-487-r4E643rYPo2fhUAw-JtXfw-1; Mon, 20 Dec 2021 12:13:04 -0500
X-MC-Unique: r4E643rYPo2fhUAw-JtXfw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50686802C9B;
	Mon, 20 Dec 2021 17:13:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 145BC1037F36;
	Mon, 20 Dec 2021 17:12:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 333381809CB8;
	Mon, 20 Dec 2021 17:12:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BKHCsf3009920 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 20 Dec 2021 12:12:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7CE3D401E3D; Mon, 20 Dec 2021 17:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7883C40146E
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:12:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58EAF185A79C
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 17:12:54 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-125-Iwr6IsEbNBSWpkVZS2qBmA-1; Mon, 20 Dec 2021 12:12:52 -0500
X-MC-Unique: Iwr6IsEbNBSWpkVZS2qBmA-1
Received: by mail-qk1-f177.google.com with SMTP id t83so9987903qke.8
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 09:12:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=/Li/nlK3U81EWwgp+bivx+mECD9jXPQIk54u13WG3Oc=;
	b=62OmF7HDxmrCFcSLuKSAmnkhhO9YoOsPOipWqlROATTbONazvketkKdemaGLFAAS+B
	SSz0lT9DdEsyllKj4iGinavNPwJ6aqQtjt1HkacuftMt4rK7OQDCiqwyNcUeAQxm1yyK
	77l4/O8QSw64jTBr+VuuSnGN8LkRKlUKdtnf3QwOBOtm4GrRaIQXc40N8myxbtXzVXWV
	xkiOjphrUr9/o6k1qH3kbhS3X3TBDt66li3F3IQ7t9yaTqtCS4lq1LEcjsKB03UAjkIo
	fp3tlFIaYTty9YaFz95zLk6gnMnuNDWvM2Slhx/Mjp3LnXvw0xcCFNU6FSgcYQ41URPP
	nPMw==
X-Gm-Message-State: AOAM533Wpw7NyTJC7MjwRQJuaSFZuGAprjM934Paw8M27FLNDMswHYNz
	RllBctsFgqZuhxzCpsVufaKX7wLdwTw=
X-Google-Smtp-Source: ABdhPJyqxHfLDEqgGqaUriQ3mzoWkmwKM/bmI8igWUvIVxFuAxlEE+1bURW23eyqtShfwPt/XJe/ig==
X-Received: by 2002:a05:620a:24c3:: with SMTP id
	m3mr10188306qkn.301.1640020369628; 
	Mon, 20 Dec 2021 09:12:49 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:8e:f16c:69df:984d])
	by smtp.gmail.com with ESMTPSA id
	u6sm6384755qki.129.2021.12.20.09.12.48 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 20 Dec 2021 09:12:48 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: How can I add Arabic as a recognition language to Lios?
Date: Mon, 20 Dec 2021 12:12:47 -0500
Message-Id: <6101C118-6497-4838-8184-BE24701F388E@gmail.com>
References: <2c0ff675-6551-c3d4-f381-69a1abd2746a@slint.fr>
In-Reply-To: <2c0ff675-6551-c3d4-f381-69a1abd2746a@slint.fr>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLApJIGRpZCBub3QgZG8gdGhlIHRlc3Rpbmcgb24gYSBQREYgZmlsZS4gSSBkaWQg
dGhlIHRlc3RpbmcgaW4gZGlyZWN0IHNjYW4uIEkgcHV0IHRoZSBwYWdlIG9uIGEgZmxhdGJlZCBz
Y2FubmVyIGFuZCBoaXQgdGhlIHNjYW4gYW5kIHJlY29nbml6ZSBtZW51IGl0ZW0gaW4gTGlvcy4K
Q2hlZXJzLApJYnJhaGltCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIERlYyAyMCwgMjAyMSwg
YXQgMTI6MDQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0hpIElicmFoaW0sCj4gCj4gTm90IHN1cmUg
d2hlcmUgdGhlIGlzc3VlIGlzLgo+IAo+IFRvIGludmVzdGlnYXRlLCBjb3VsZCB5b3UgcGxlYXNl
IHNlbmQgcHJvdmlkZSBhIGxpbmsgdG8gYSBwZGYgaW4gQXJhYmljIChvciBzZW5kCj4gbWUgcHJp
dmF0ZWx5IHRoZSBwZGYgaXRzZWxmKSB0aGF0IHdlIGNvdWxkIGJvdGggdHJ5Pwo+IAo+IFRoYW5r
cwo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPj4gTGUgMjAvMTIvMjAyMSDDoCAwNTowOSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IFRoYW5rcyBEaWRp
ZXIsCj4+IAo+PiBVbmZvcnR1bmF0ZWx5LCBJIHRyaWVkIHlvdXIgc3VnZ2VzdGlvbiBhbmQgc3Rp
bGwgZ290IHplcm8gYWNjdXJhY3kgb2YgT0NSIG9mCj4+IEFyYWJpYyBsZXR0ZXJzLiBJIHR5cGVk
IGEgUGFyYWdyYXBoIG9mIEFyYWJpYyBhbmQgcHJpbnRlZCBhbmQgdGhlbiBzY2FubmVkLCBidXQK
Pj4gdGhlIG91dGNvbWUgd2FzIGdpYmJpcmlzaCwgYWxsIGluIGxhdGluIGNoYXJhY3RlcnMuIEkg
dHlwZWQgYSBwYXJhZ3JhcGggaW4KPj4gRW5nbGlzaCBhbmQgcHJpbnRlZCBpdCBvdXQsIHdoZW4g
SSBzY2FubmVkLCB0aGUgT0NSIGFjY3VyYWN5IHdhcyBleGNlbGxlbnQuICBTbywKPj4gdGhlciBp
cyBzb21lIHByb2JsZW0gd2l0aCB0aGUgQXJhYmljIHJlY29nbml0aW9uLiAgSXQgc2VlbXMgdG8g
bWUgdGhhdCBhbHRob3VnaAo+PiBBcmFiaWMgaXMgbGlzdGVkLCB0aGUgT0NSIGVuZ2luZSBpcyBu
b3QgYWN0dWFsbHkgdHJ5aW5nIHRvIHJlY29nbml6ZSBBcmFiaWMuCj4+IAo+PiBDaGVlcnMsCj4+
IAo+PiBJYnJhaGltCj4+IAo+Pj4gT24gMTIvMTcvMjEgNjo0OCBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhpIElicmFoaW0sCj4+PiAKPj4+IFlvdSBk
byBub3QgbmVlZCB0byBhZGQgYW55dGhpbmcgc3BlY2lhbCwgdGhlIGZpbGVzCj4+PiAvdXNyL3No
YXJlL3Rlc3NkYXRhL0FyYWJpYy50cmFpbmVkZGF0YSBiZWluZyBpbmNsdWRlZCBpbiB0aGUgcGFj
a2FnZQo+Pj4gdGVzc2VyYWN0LWRhdGEgaW4gU2xpbnQuCj4+PiAKPj4+IEp1dHMgb3BlbiBsaW9z
LCB0aGVuIGluIG1lbnUgc2VsZWN0IFByZWZlcmVuY2VzIHRoZW4gUHJlZmVyZW5jZXMgcmVjb2du
aXRpb24gYW5kCj4+PiBzZWxlY3Q6Cj4+PiBFbmdpbmU6IFRlc3NlcmFjdAo+Pj4gTGFuZ3VhZ2U6
IEFyYWJpYwo+Pj4gCj4+PiBJIGRvbid0IGhhdmUgYSBzY2FubmVyIGF0IGhhbmQgYnV0IGRvd25s
b2FkZWQgdGhpcyBmaWxlOgo+Pj4gaHR0cHM6Ly9mYWRhLmJpcnplaXQuZWR1L2JpdHN0cmVhbS8y
MC41MDAuMTE4ODkvNjkxMC8xL21raGFsZGklMjBTYWhhciUyMFJlc2VhcmNoLnBkZgo+Pj4gCj4+
PiB0aGVuIEkgb3BlbmVkIGl0IGluIExpb3MgKG1lbnUgRmlsZSB0aGVuIE9wZW4pLgo+Pj4gCj4+
PiBUaGUgZmlsZSB3YXMgcmVjb2duaXplZCBhbmQgdGhlIHRleHQgcHJvcGVybHkgZXh0cmFjdGVk
Lgo+Pj4gCj4+PiBDb3B5aW5nIGEgcGFyYWdyYXBoIG9mIHRoZSBleHRyYWN0ZWQgdGV4dCBhbmQg
cGFzdGluZyBpdCBpbiB0cmFuc2xhdGUuZ29vZ2xlLmZyCj4+PiBhbGxvd2VkIG1lIHRvIHJlYWQg
aXQgaW4gRnJlbmNoIDxzbWlsZT4KPj4+IAo+Pj4gQ2hlZXJzLAo+Pj4gCj4+PiBEaWRpZXIKPj4+
IAo+Pj4gTGUgMTgvMTIvMjAyMSDDoCAwMDoxMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4gSGkgQWxsLAo+Pj4+IAo+Pj4+IFRoaXMgcXVlc3Rpb24g
aXMgcHJpbWFyaWx5IHRvIERpZGllcjoKPj4+PiAKPj4+PiBIb3cgY2FuIEkgYWRkIEFyYWJpYyBk
aWN0aW9uYXJ5IHRvIExpb3Mgc28gdGhhdCBJIGNhbiB1c2UgbXkgc2Nhbm5lciB0byBzY2FuCj4+
Pj4gQXJhYmljIHRleHQ/IEkgYXNzdW1lIEkgd2lsbCBhbHNvIGJlIGFibGUgdG8gcnVuIEFyYWJp
Yy5wZGYgZmlsZXMgdGhyb3VnaCBMaW9zCj4+Pj4gYW5kIGFzIHN1Y2ggSSB3aWxsIGhhdmUgYWNj
ZXNzIHRvIGEgbG90IG9mIEFyYWJpYyBib29rcyBhdmFpbGFibGUgb24gdGhlIG5ldC4KPj4+PiAK
Pj4+PiBDaGVlcnMsCj4+Pj4gCj4+Pj4gSWJyYWhpbQo+IAo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

