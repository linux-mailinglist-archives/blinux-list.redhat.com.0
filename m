Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id C34E7162CA9
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 18:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582046704;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=1tO8TNU8iRo0k9xfUNorqHwx+/4gne9CPiLSEwWvKyY=;
	b=V2vmSz8cKCa2EZdUPz646zwkd/ZUZvtR+Z2DwcZMkXMzvyZp72HpNfupsyDf/F6V7qpq5t
	wt9QDUN9ZYp85kPP8KoYtbjh6bYPyP5IeV9l5wI7u0pbmghapU7OG4o//n/wY1ejzHEFkv
	QkEjPFkSsL99aJdTWo7KBUKnLshjGvs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-IZIPLhNmNdWpQAOJNBSiEA-1; Tue, 18 Feb 2020 12:24:59 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45ACD800D5A;
	Tue, 18 Feb 2020 17:24:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28DE05C219;
	Tue, 18 Feb 2020 17:24:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B7CFC35B0D;
	Tue, 18 Feb 2020 17:24:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01IHM9jW004908 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 12:22:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7FD3B2026D67; Tue, 18 Feb 2020 17:22:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A274215AB05
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 17:22:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E4FC101D234
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 17:22:07 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-208-iRjJ_DqJN5K4GJjNs50oIg-1; Tue, 18 Feb 2020 12:22:00 -0500
Received: by mail-wr1-f42.google.com with SMTP id n10so22987816wrm.1
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 09:21:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
	:date:user-agent:mime-version:in-reply-to:content-language;
	bh=dtoMM7eNBhYRCmQt+vO85IdpKTOGb133+Yvx3nr6akE=;
	b=b0uyWZlXKTrvnLainEKWgDp8k+YJKLvsvD1/YFM3M/Pdy0M86ONvt5v/pZBMqVceXh
	qquMws+f+3KQ+cZ/Ypnql32oCBbGnGS7+ACMjbJ0sd6BJq6IKP/2HuNDlga4ko7ja0c1
	hfJMw2bYswg8O5/IOZiRVXRQCKqxCUNelZBJ5jNEyqpKyMnl9uDFnm9ZcENrVJaZZMVj
	QAFZH4Z9upZEI4FCUsUtaag6+BYH+qBtX49kywkhdhwKkC91ORLZlPvhb4mkQbFYLBl/
	SsWHtGBXqY52LPUuvz/b/s+ttfmW3UKZ/4wmSYoT9L3QkXpgpJR209RYSJ+9vTG54Nke
	iGGA==
X-Gm-Message-State: APjAAAXSlFoQbDtNa8j3PdyxZ3vDIZIhzZVIsr0jPCPUd7+pk7NEzKPH
	bIVcxPw7fhPK9jU8DQDydPBri3v7/1JNnQ==
X-Google-Smtp-Source: APXvYqwhNi6AQM+3YCHPZyHi64HR9l60RUBq0cBI1I9cYsUtIUWm9gRCJJ1NYut/33S9VMCP2iRDOw==
X-Received: by 2002:adf:ff8c:: with SMTP id j12mr19301690wrr.354.1582046518284;
	Tue, 18 Feb 2020 09:21:58 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	e22sm4034407wme.45.2020.02.18.09.21.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 Feb 2020 09:21:57 -0800 (PST)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
	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
Message-ID: <9142de9b-16ea-7859-727f-c9790df49de6@gmail.com>
Date: Tue, 18 Feb 2020 20:21:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: iRjJ_DqJN5K4GJjNs50oIg-1
X-MC-Unique: IZIPLhNmNdWpQAOJNBSiEA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aGVsbG8gYmxpbnV4LgoKZGlzY2xhaW1lcjogc2luY2UgSSBhbSBhwqBUYWxraW5nQXJjaCA8aHR0
cHM6Ly90YWxraW5nYXJjaC5pbmZvPgptYWludGFpbmVyIG15IG9waW5pb24gbWF5IGJlIGJpYXNl
ZC4KCj4gU29ycnkgYnV0IEFyY2hsaW51eCBpcyBub3Qgc29tZXRoaW5nIHRvIHVzZSBmb3Igc29t
ZW9uZSBibGluZCB1c2luZyBMaW51eCwKCkkgZGlzYWdyZWUgd2l0aCB0aGF0LiBBcmNoIGlzIHBl
cmhhcHMgbW9yZSBjb21wbGljYXRlZCB0aGFuIG90aGVyCmRpc3RyaWJ1dGlvbnMsIGJ1dCB3aXRo
IGR1ZSBkaWxpZ2VuY2UsIGl0IGdpdmVzIG11Y2ggbW9yZSBmdW5jdGlvbmFsaXR5LgphbHNvIGZy
b20gYWNjZXNzaWJpbGl0eSBwb2ludHMgb2YgdmlldzogdGhlIGxhdGVzdCB2ZXJzaW9ucyBvZiBw
YWNrYWdlcwphbmQgdGhlIG1pbmltdW0gbnVtYmVyIG9mIGRvd25zdHJlYW0gcGF0Y2hlcyBhcmUg
b2YgZ3JlYXQgYmVuZWZpdC4KCj4gSSBqdXN0IHJhbiBhIGtlcm5lbCB1cGRhdGUgYSBmZXcgbWlu
dXRlcyBhZ28gb24gYXJjaGxpbnV4IGFuZCB0cmllZAo+IHJlYm9vdGluZy5JIGNhbiBhc3N1cmUg
eW91IHRoYXQgdGhpcyBpcyBhbiBpc29sYXRlZCBwcm9ibGVtIG9uIHlvdXIgc2lkZS4gSSBoYXZl
IHNldmVyYWwgbWFjaGluZXMgYW5kIGEgc2VydmVyIG9uIHRoZSBhcmNoLiBhbmQgSSBkaWRu4oCZ
dCBoYXZlIHN1Y2ggcHJvYmxlbXMuCnRvIGhlbHAgSSBuZWVkIHRvIGtub3c6IHdoaWNoIGJvb3Rs
b2FkZXIgeW91IGFyZSB1c2luZyBhbmQgcHJlZmVyYWJseQppdHMgY29uZmlncy4KCgpTaW5jZXJl
bHksIEFsZXhhbmRlcgoKMTguMDIuMjAyMCAxNTozMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+IFNvcnJ5IGJ1dCBBcmNobGludXggaXMgbm90IHNvbWV0
aGluZyB0byB1c2UgZm9yIHNvbWVvbmUgYmxpbmQgdXNpbmcgTGludXgsCj4gRGViaWFuIHN0YWJs
ZSBtYXliZSB3aXRoIGJhY2twb3J0cywgYXBwaW1hZ2VzLCBmbGF0cGFrcyBhbmQgc25hcHMgcGFj
a2FnZXMKPiBpZiBuZWVkZWQgd291bGQgYmUgYmV0dGVyIHdpdGggTWF0ZSBoYXZpbmcgQ29tcGl6
IHVuZGVyIGlmIGxvdyB2aXNpb24sCj4gZ25vbWUtb3JjYSwgYnJsdHR5LCBlc3BlYWsgYW5kIHNv
IG9uIGFyZSBvYnZpb3VzbHkgcmVjb21tZW5kZWQuCj4KPiBEZWJpYW4gdGVzdGluZyBpcyBhbHNv
IGFuIG9wdGlvbiBidXQgSSB3b3VsZCBhdm9pZCBpZiBwb3NzaWJsZS4KPgo+IFVidW50dSBNYXRl
IGhvd2V2ZXIgaGFzIHRoZSB0b3Agb3V0LW9mLXRoZS1ib3ggYWNjZXNzaWJpbGl0eSBhdCBhIHBv
aW50Cj4gdGhhdCBibGluZCB1c2VycyBjb3VsZCBuZWFybHkgaW5zdGFsbCBsaW51eCBhbG9uZSB3
aXRob3V0IGFueSBoZWxwLCB0aGVpcgo+IG1hdGUgbWVudSBmcm9tIHNvbHVzIEkgdGhpbmsgZ2l2
ZSB0aGVtIHRoZWlyIGVkZ2UsIEkgd29uZGVyIGlmIERlYmlhbiBjb3VsZAo+IHVzZSBpdC4KPgo+
IEkgd2FzIHdvcmtpbmcgb24gbGludXggYWNjZXNzaWJpbGl0eSB3aXRob3V0IGJlaW5nIGEgY29k
ZXIsIEkgdHJpZWQgdG8gZ2V0Cj4gdmludXggYW5kIHNvbmFyIGxpbnV4IHRlYW0gb3Igc2ltaWxh
ciB0byBtb3ZlIHRvIGEgZGViaWFuIGJhc2UgaG9waW5nIHRvCj4gYWRkIGEgZmV3IGZlYXR1cmVz
IHRoYXQgSSBrZXB0IGhpZGRlbiBzaW5jZSBJIG5lZWQgdG8gcHVzaCBhIHJlc3VsdCBhcyBhCj4g
d2hvbGUgdG8gZml4IHZhcmlvdXMgTGludXggaXNzdWVzLgo+Cj4gVW50aWwgdGhlbiBJIHNhZGx5
IGhhdmUgdG8gYXZvaWQgdG8gY29udHJpYnV0ZSBvciBJIHdvdWxkIGp1c3QgbWFrZSBpdAo+IHdv
cnNlLgo+Cj4gTGUgbWFyLiAxOCBmw6l2ci4gMjAyMCAwNDowNywgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8Cj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gYSDDqWNyaXQgOgo+
Cj4+IEkganVzdCByYW4gYSBrZXJuZWwgdXBkYXRlIGEgZmV3IG1pbnV0ZXMgYWdvIG9uIGFyY2hs
aW51eCBhbmQgdHJpZWQKPj4gcmVib290aW5nLgo+PiBTb21lIHV1aWQgY2Fubm90IGJlIGZvdW5k
IGFuZCBJIGdvdCB0aHJvd24gaW50byBhbiBlbWVyZ2VuY3kgc2hlbGwuICBBbGwKPj4gb2YgdGhp
cyBvZiBjb3Vyc2Ugd2l0aG91dCBzY3JlZW4gcmVhZGVyIHdvcmtpbmcuCj4+IEkgZm91bmQgdGhp
cyBvdXQgYXMgYSByZXN1bHQgb2YgdGFsa2luZyB0byBhIGJlIG15IGV5ZXMgdm9sdW50ZWVyIG9u
IHRoZQo+PiBwaG9uZSBhZnRlciBzaGUgZXhhbWluZWQgbXkgc2NyZWVuLgo+PiBJIGhhdmUgbm8g
aWRlYSB3aGF0IGNhdXNlZCB0aGF0IGFuZCBoYXZlIG1pbmltYWwgdXNiIHN0dWZmIGNvbm5lY3Rl
ZCB0bwo+PiB0aGUgY29tcHV0ZXIuICBJIGhhZCBkaXNjb25uZWN0ZWQgYSBmbGFzaCBkcml2ZSBm
cm9tIHRoZSBjb21wdXRlciB0aGlua2luZwo+PiB0aGUgZmxhc2ggZHJpdmUgd2FzIHRoZSBjYXVz
ZSBvZiB0aGUgbWlzc2luZyB1dWlkIGJ1dCB0aGF0IHdhc24ndCB0aGUKPj4gY2FzZS4KPj4gRm9y
dHVuYXRlbHkgSSB1c2Ugc29saWQgc3RhdGUgZHJpdmVzIGFuZCBoYXZlIGFub3RoZXIgZGlmZmVy
ZW50IHN5c3RlbSBvbgo+PiBvbmUgb2YgdGhlbSBvciBJJ2QgYmUgb2ZmbGluZSBmb3IgYSB3aGls
ZS4KPj4gVGhlIHZvbHVudGVlciBkaWRuJ3QgcmVhZCBtZSB0aGUgbG9uZyBudW1iZXIgYWZ0ZXIg
dGhhdCB1dWlkIGVycm9yLgo+Pgo+Pgo+Pgo+PiAtLQo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

