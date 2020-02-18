Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id EBBC0162E18
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 19:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582049756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=+3ygjBDyJNg7orBhHarv6HoJJg5F8Jh3AGzgthCF0Ik=;
	b=iMCdRriOFDoN7JmKuusgLbgHYMjS9vmxiXpXBvPZvOSN6+MtFNqeaXgdhJLjRg9lFFQ0rX
	SRAYC0yNPuWkgk0S6Pny3kem2DjX3/hiMuvBNGY0/pjeu7WczEP80VJwjRMVGNIbCAnRd2
	ouybipLf4QmMejfZ8D4qlxPJdcYstTg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-7wUiq1tiNlKqxZlbUlVSxg-1; Tue, 18 Feb 2020 13:15:54 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E96B0107ACC9;
	Tue, 18 Feb 2020 18:15:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A042C19757;
	Tue, 18 Feb 2020 18:15:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6130E18089C8;
	Tue, 18 Feb 2020 18:15:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01IIFaoA007583 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 13:15:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D9ACF2063FE5; Tue, 18 Feb 2020 18:15:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D20BE2063FE8
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 18:15:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B90EE8EB45C
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 18:15:34 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-3-50kdYl_YOM-ivCzT4b7hAw-1; Tue, 18 Feb 2020 13:15:31 -0500
Received: by mail-wr1-f42.google.com with SMTP id g3so25085028wrs.12
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 10:15:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=C4HggK1nbNE+eKuhSJwvtEzfWqyNJ7Y20Dva0lIMFc0=;
	b=QsNxIx1Pmj1zo0OQNevO0rQlofhUlzcAOHcVsoKvsWjql09TRp1seufsrNkARfGxtt
	y0pvxHPgxpk4hy2zp9/Up/2hZ0veDOupHeu8+BijnVapcY4/YNhEtXbEF1ihnmLG/Pw8
	IKQEvUola6mlOfcqME/lSYq7T6veeRyO2k2Xw9yGak+8gCDSf2ksA7JNal+29rf9mkDY
	jx0YI2e6XQpJi8UdXSTXDRlupE5qQ8MXG/dGw7jKGTO/cShzXyN8fq6cEuWlXcJDMO69
	nEbvCMOWnXETZg+AYy7q8AYe4fMolks0oGR0JY5bLfMpz9zOwJM2o2+Zxp78OsJBQNVT
	8Niw==
X-Gm-Message-State: APjAAAXFv6A6qlXgj9SGYw97sAVN4mLRVukHEE+Y0nywBCi3cEIOCwcs
	6CbyvmQbGrupB/GfauewKj7f1L1O7X8PJA==
X-Google-Smtp-Source: APXvYqyHiveYuJGzFkgiJBhbWfIxcWojfoRKeZm6T9dIANvGo6r0kmsd7L2RT9ucvS5rxSIG+n37YQ==
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr30723331wrm.107.1582049729897;
	Tue, 18 Feb 2020 10:15:29 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id r6sm7115015wrp.95.2020.02.18.10.15.28
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 Feb 2020 10:15:29 -0800 (PST)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
	<9142de9b-16ea-7859-727f-c9790df49de6@gmail.com>
	<alpine.NEB.2.21.2002181243200.9999@panix1.panix.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
	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
Message-ID: <529670b9-76fa-0930-eaed-381ff23297db@gmail.com>
Date: Tue, 18 Feb 2020 21:15:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002181243200.9999@panix1.panix.com>
Content-Language: en-US
X-MC-Unique: 50kdYl_YOM-ivCzT4b7hAw-1
X-MC-Unique: 7wUiq1tiNlKqxZlbUlVSxg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01IIFaoA007583
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

cGVyaGFwcyB5b3UgY2FuIGJvb3QgZnJvbSBhcmNoaXNvIGFuZCByZWluc3RhbGwgdGhlIGtlcm5l
bCBwYWNrYWdlLiBJCmFsc28gYWR2aXNlIGNoZWNraW5nIHRoZSBmaWxlIHN5c3RlbSBmb3IgZXJy
b3JzLgoKClNpbmNlcmVseSwgQWxleGFuZGVyLgoKMTguMDIuMjAyMCAyMDo0NCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+IG1raW5pdHBvIHdpdGggbW9z
dGx5IGRlZmF1bHQgZ3J1YiBvbmx5IHRoaW5nIG1vZGlmaWVkIGluIGdydWIgd2FzIHRvCj4gZW5h
YmxlIHRoZSBUVU5FIGxpbmUuCj4KPiBPbiBUdWUsIDE4IEZlYiAyMDIwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+IERhdGU6IFR1ZSwgMTggRmViIDIwMjAg
MTI6MjE6NTYKPj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gU3Vi
amVjdDogUmU6IGVhcmx5IHdhcm5pbmcgSSBob3BlCj4+Cj4+IGhlbGxvIGJsaW51eC4KPj4KPj4g
ZGlzY2xhaW1lcjogc2luY2UgSSBhbSBhP1RhbGtpbmdBcmNoIDxodHRwczovL3RhbGtpbmdhcmNo
LmluZm8+Cj4+IG1haW50YWluZXIgbXkgb3BpbmlvbiBtYXkgYmUgYmlhc2VkLgo+Pgo+Pj4gU29y
cnkgYnV0IEFyY2hsaW51eCBpcyBub3Qgc29tZXRoaW5nIHRvIHVzZSBmb3Igc29tZW9uZSBibGlu
ZCB1c2luZyBMaW51eCwKPj4gSSBkaXNhZ3JlZSB3aXRoIHRoYXQuIEFyY2ggaXMgcGVyaGFwcyBt
b3JlIGNvbXBsaWNhdGVkIHRoYW4gb3RoZXIKPj4gZGlzdHJpYnV0aW9ucywgYnV0IHdpdGggZHVl
IGRpbGlnZW5jZSwgaXQgZ2l2ZXMgbXVjaCBtb3JlIGZ1bmN0aW9uYWxpdHkuCj4+IGFsc28gZnJv
bSBhY2Nlc3NpYmlsaXR5IHBvaW50cyBvZiB2aWV3OiB0aGUgbGF0ZXN0IHZlcnNpb25zIG9mIHBh
Y2thZ2VzCj4+IGFuZCB0aGUgbWluaW11bSBudW1iZXIgb2YgZG93bnN0cmVhbSBwYXRjaGVzIGFy
ZSBvZiBncmVhdCBiZW5lZml0Lgo+Pgo+Pj4gSSBqdXN0IHJhbiBhIGtlcm5lbCB1cGRhdGUgYSBm
ZXcgbWludXRlcyBhZ28gb24gYXJjaGxpbnV4IGFuZCB0cmllZAo+Pj4gcmVib290aW5nLkkgY2Fu
IGFzc3VyZSB5b3UgdGhhdCB0aGlzIGlzIGFuIGlzb2xhdGVkIHByb2JsZW0gb24geW91ciBzaWRl
LiBJIGhhdmUgc2V2ZXJhbCBtYWNoaW5lcyBhbmQgYSBzZXJ2ZXIgb24gdGhlIGFyY2guIGFuZCBJ
IGRpZG4/dCBoYXZlIHN1Y2ggcHJvYmxlbXMuCj4+IHRvIGhlbHAgSSBuZWVkIHRvIGtub3c6IHdo
aWNoIGJvb3Rsb2FkZXIgeW91IGFyZSB1c2luZyBhbmQgcHJlZmVyYWJseQo+PiBpdHMgY29uZmln
cy4KPj4KPj4KPj4gU2luY2VyZWx5LCBBbGV4YW5kZXIKPj4KPj4gMTguMDIuMjAyMCAxNTozMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA/Pz8/PzoKPj4+IFNvcnJ5IGJ1dCBB
cmNobGludXggaXMgbm90IHNvbWV0aGluZyB0byB1c2UgZm9yIHNvbWVvbmUgYmxpbmQgdXNpbmcg
TGludXgsCj4+PiBEZWJpYW4gc3RhYmxlIG1heWJlIHdpdGggYmFja3BvcnRzLCBhcHBpbWFnZXMs
IGZsYXRwYWtzIGFuZCBzbmFwcyBwYWNrYWdlcwo+Pj4gaWYgbmVlZGVkIHdvdWxkIGJlIGJldHRl
ciB3aXRoIE1hdGUgaGF2aW5nIENvbXBpeiB1bmRlciBpZiBsb3cgdmlzaW9uLAo+Pj4gZ25vbWUt
b3JjYSwgYnJsdHR5LCBlc3BlYWsgYW5kIHNvIG9uIGFyZSBvYnZpb3VzbHkgcmVjb21tZW5kZWQu
Cj4+Pgo+Pj4gRGViaWFuIHRlc3RpbmcgaXMgYWxzbyBhbiBvcHRpb24gYnV0IEkgd291bGQgYXZv
aWQgaWYgcG9zc2libGUuCj4+Pgo+Pj4gVWJ1bnR1IE1hdGUgaG93ZXZlciBoYXMgdGhlIHRvcCBv
dXQtb2YtdGhlLWJveCBhY2Nlc3NpYmlsaXR5IGF0IGEgcG9pbnQKPj4+IHRoYXQgYmxpbmQgdXNl
cnMgY291bGQgbmVhcmx5IGluc3RhbGwgbGludXggYWxvbmUgd2l0aG91dCBhbnkgaGVscCwgdGhl
aXIKPj4+IG1hdGUgbWVudSBmcm9tIHNvbHVzIEkgdGhpbmsgZ2l2ZSB0aGVtIHRoZWlyIGVkZ2Us
IEkgd29uZGVyIGlmIERlYmlhbiBjb3VsZAo+Pj4gdXNlIGl0Lgo+Pj4KPj4+IEkgd2FzIHdvcmtp
bmcgb24gbGludXggYWNjZXNzaWJpbGl0eSB3aXRob3V0IGJlaW5nIGEgY29kZXIsIEkgdHJpZWQg
dG8gZ2V0Cj4+PiB2aW51eCBhbmQgc29uYXIgbGludXggdGVhbSBvciBzaW1pbGFyIHRvIG1vdmUg
dG8gYSBkZWJpYW4gYmFzZSBob3BpbmcgdG8KPj4+IGFkZCBhIGZldyBmZWF0dXJlcyB0aGF0IEkg
a2VwdCBoaWRkZW4gc2luY2UgSSBuZWVkIHRvIHB1c2ggYSByZXN1bHQgYXMgYQo+Pj4gd2hvbGUg
dG8gZml4IHZhcmlvdXMgTGludXggaXNzdWVzLgo+Pj4KPj4+IFVudGlsIHRoZW4gSSBzYWRseSBo
YXZlIHRvIGF2b2lkIHRvIGNvbnRyaWJ1dGUgb3IgSSB3b3VsZCBqdXN0IG1ha2UgaXQKPj4+IHdv
cnNlLgo+Pj4KPj4+IExlIG1hci4gMTggZj92ci4gMjAyMCAwNDowNywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiBhID9jcml0
IDoKPj4+Cj4+Pj4gSSBqdXN0IHJhbiBhIGtlcm5lbCB1cGRhdGUgYSBmZXcgbWludXRlcyBhZ28g
b24gYXJjaGxpbnV4IGFuZCB0cmllZAo+Pj4+IHJlYm9vdGluZy4KPj4+PiBTb21lIHV1aWQgY2Fu
bm90IGJlIGZvdW5kIGFuZCBJIGdvdCB0aHJvd24gaW50byBhbiBlbWVyZ2VuY3kgc2hlbGwuICBB
bGwKPj4+PiBvZiB0aGlzIG9mIGNvdXJzZSB3aXRob3V0IHNjcmVlbiByZWFkZXIgd29ya2luZy4K
Pj4+PiBJIGZvdW5kIHRoaXMgb3V0IGFzIGEgcmVzdWx0IG9mIHRhbGtpbmcgdG8gYSBiZSBteSBl
eWVzIHZvbHVudGVlciBvbiB0aGUKPj4+PiBwaG9uZSBhZnRlciBzaGUgZXhhbWluZWQgbXkgc2Ny
ZWVuLgo+Pj4+IEkgaGF2ZSBubyBpZGVhIHdoYXQgY2F1c2VkIHRoYXQgYW5kIGhhdmUgbWluaW1h
bCB1c2Igc3R1ZmYgY29ubmVjdGVkIHRvCj4+Pj4gdGhlIGNvbXB1dGVyLiAgSSBoYWQgZGlzY29u
bmVjdGVkIGEgZmxhc2ggZHJpdmUgZnJvbSB0aGUgY29tcHV0ZXIgdGhpbmtpbmcKPj4+PiB0aGUg
Zmxhc2ggZHJpdmUgd2FzIHRoZSBjYXVzZSBvZiB0aGUgbWlzc2luZyB1dWlkIGJ1dCB0aGF0IHdh
c24ndCB0aGUKPj4+PiBjYXNlLgo+Pj4+IEZvcnR1bmF0ZWx5IEkgdXNlIHNvbGlkIHN0YXRlIGRy
aXZlcyBhbmQgaGF2ZSBhbm90aGVyIGRpZmZlcmVudCBzeXN0ZW0gb24KPj4+PiBvbmUgb2YgdGhl
bSBvciBJJ2QgYmUgb2ZmbGluZSBmb3IgYSB3aGlsZS4KPj4+PiBUaGUgdm9sdW50ZWVyIGRpZG4n
dCByZWFkIG1lIHRoZSBsb25nIG51bWJlciBhZnRlciB0aGF0IHV1aWQgZXJyb3IuCj4+Pj4KPj4+
Pgo+Pj4+Cj4+Pj4gLS0KPj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

