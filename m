Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E38DF474739
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 17:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639498329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zv2JZGfoQDTvZxVcqmgHIOeYVLHTwa7JAejzLOx1pyU=;
	b=DcQQg4I9ljZLGIdFm8cOOJjFHhpS7xG0G9QzS5GE83w3JUH/KooDHPV25+DqsRIMCbiYRS
	2bYGbggsWUBbXCllQxE3IPJDD8Gl+1kzctmVhMkZexf3gS0Xjbvi/jpFRtzLqaMnnaLc8S
	PA7owvUBSbEIHtNhe0K7VgbqgYAwdvQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-Xns0RoxSOo6nfXQjtcg6LA-1; Tue, 14 Dec 2021 11:12:06 -0500
X-MC-Unique: Xns0RoxSOo6nfXQjtcg6LA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD11C189056C;
	Tue, 14 Dec 2021 16:11:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEE318795C;
	Tue, 14 Dec 2021 16:11:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71F2A4BB7C;
	Tue, 14 Dec 2021 16:11:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEGBHup017821 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 11:11:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5418D40C1247; Tue, 14 Dec 2021 16:11:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5054B400E137
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 16:11:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3914929AB3E4
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 16:11:17 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-225-Q_OV9c5OPSKFJta_meJ_VQ-1; Tue, 14 Dec 2021 11:11:15 -0500
X-MC-Unique: Q_OV9c5OPSKFJta_meJ_VQ-1
Received: by mail-wr1-f48.google.com with SMTP id i22so3436369wrb.13
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 08:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=U/HZPr5KOo8hT3wTmEROrbAM046iUtXgONRgvQ29420=;
	b=hLmBHjWOjobrb/mTwLDflXOg3iMo6aKeKCsQZl3f7+aV5yazz3oYTj+aRkEfssn7c4
	sbx+Ew90+XIpyIu0oY/idOUCRC1dZ9hGUL5i0DLAyLAhyNuqMaxqC+FrvZ8FqrOqNTMb
	DqcRdU22iDSMEAhYcjr4cZPPHHRUSHQ1v0H7hVKmKYckfkQIoFR4L8EwlBPCeTyS4qyT
	IwOzP5ZPdbTYhOrvaYbZQbbRmQnMDm71tyrLnvjlAtWtxACAhIElgwufaPy9BKw2EV9N
	OwlXqg2ellAh1oOAKWd/ezn/PDWS5il/2lJwCNUFWGtOLNM8oa/Fy5IW66vKKDeaOTIy
	hDYg==
X-Gm-Message-State: AOAM5339kgIjBB6F/9hjC81YHbY9QAkNhc+YNixWk/TgBTR1owlrTXC1
	QDG9MRFxOxfDsR5Sr9oUx8UDrNA09LVcCA==
X-Google-Smtp-Source: ABdhPJweGUKjIhYSxN7JGqNOlynpkaeoEpu8Oo9n4vEZZOW/TB3OTMyncLyV9+t4p3QDXiR4Fl1AxA==
X-Received: by 2002:a5d:4d07:: with SMTP id z7mr6779912wrt.487.1639498274093; 
	Tue, 14 Dec 2021 08:11:14 -0800 (PST)
Received: from [192.168.8.130] ([197.184.183.90])
	by smtp.gmail.com with ESMTPSA id p8sm293116wrx.25.2021.12.14.08.11.12
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 08:11:13 -0800 (PST)
Message-ID: <bb18c850-c063-337c-ea95-e3067c3ff7fa@gmail.com>
Date: Tue, 14 Dec 2021 18:11:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<424F9FC7-05D3-450F-ADCE-0AA49C8D68A4@gmail.com>
In-Reply-To: <424F9FC7-05D3-450F-ADCE-0AA49C8D68A4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSB1c3VhbGx5IHJ1biBTbGludCBhcyBteSBkYWlseSwgYnV0IHNvbWV0aW1lcyBJIGp1
c3Qgd2FudCBhIGJpdCBvZiBhIApjaGFuZ2UuCgpPbiAyMDIxLzEyLzE0IDE2OjI2LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFdlbGwsIHlvdSBjb3VsZCBhbHdh
eXMgdHJ5IFNMSU5ULiBJdOKAmXMgaW5zdGFsbGVyIHdpbGwgZXZlbiBkZXRlY3QgaWYgeW91IGFy
ZSBvbiBhbiBvbGRlciBCSU9TIG9yIHRoZSBuZXdlciBFRkkgYW5kIHNvdW5kIHRvbmVzIHRvIG5v
dGlmeSB5b3UuIEluc3RhbGwgaXMgYSBicmVlemUgYWZ0ZXIgdGhhdC4KPgo+IC1FcmljCj4KPgo+
PiBPbiBEZWMgMTQsIDIwMjEsIGF0IDQ6NTAgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBIaSwKPj4KPj4K
Pj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQgYSBza2lw
IGZvciBub3csIHRoYXQgaXMgdW5sZXNzIHRoZSBkZXYgYWN0dWFsbHkgZml4ZXMgdGhlIHRoaW5n
Lgo+Pgo+Pgo+PiBJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywgYmVjYXVzZSBpdCB3YXMgdGhlIG5l
YXJlc3QgVXNiIHN0aWNrIEkgY291bGQgZ3JhYiBxdWlja2x5Lgo+Pgo+Pgo+PiBJIG1pZ2h0IGp1
c3QgZ2l2ZSB0aGUgdmFuaWxsYSBBcmNoIElTTyBhbm90aGVyIGdvLiBXaHkgbm90Pwo+Pgo+PiBP
biAyMDIxLzEyLzE0IDEzOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+Pj4gICBvciBNYW5qYXJvIEFyY2hpdGVjdC4KPj4+Cj4+PiBQZXJzb25hbGx5LiBJJ3Zl
IGhhZCBzdWNjZXNzIHdpdGggdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlkZWQgaW5z
dGFsbGVyICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIHRh
bGtpbmcsIHdlbnQgdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBh
bmQgdGhlbiBwdXQgc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1h
bmFnZXIgb24gb25jZSB0aGUgc3lzdGVtIHdhcyBpbnN0YWxsZWQuCj4+Pgo+Pj4KPj4+IEplbnV4
IGhhcyBuZXZlciByZWFsbHkgd29ya2VkIGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQg
YWxsLCB3aGVyZWFzIHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3b3JraW5nIHJhdGhlciB3ZWxs
LCBhbmQgSSBkdW5ubyBpZiB0aGUgQXJjaGl0ZWN0IGVkaXRpb24gaXMgMzYvNjQgYml0IG9yIDMy
Yml0IG9ubHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRseSwgSSd2ZSBnb3QgYSA2NGJpdCBVRUZJ
IHN5c3RlbSBzbyB0aGUgb2ZmaWNpYWwgSVNvIHdvcmtzIGZsYXdsZXNzbHkgb24gaXQgaG93ZXZl
ciwgYnV0IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCB0
byBoZWFyIGl0IGlmIHlvdSBhcmUgc2V0IG9uIHVzaW5nIEplbnV4IGhvd2V2ZXIuCj4+Pgo+Pj4g
T24gMTIvMTQvMjEgMDk6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4gSGkgYWxsLAo+Pj4+Cj4+Pj4gSSBkZWNpZGVkIHRvIGdpdmUgSmVudXggYW5vdGhl
ciBnbywgbGFzdCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIHRyaWVkLCBJIGNvdWxkbid0IGdldCBv
cmNhIHRvIGNvbWUgb24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lzdGVtLgo+Pj4+Cj4+Pj4g
RG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pj4+Cj4+Pj4gQWxzbywgaWYgdGhpcyBkb2Vz
bid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIE1hbmphcm8gYXJjaGl0
ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxl
IGFnbywgYW5kIGlmLCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtl
IHRvIGdpdmUgdGhhdCBvbmUgYSBnby4KPj4+Pgo+Pj4+IFRoYW5rcyBzbyBsb25nLgo+Pj4+Cj4+
Pj4gV2FybSByZWdhcmRzLAo+Pj4+Cj4+Pj4gQnJhbmR0IFN0ZWVua2FtcAo+Pj4+Cj4+Pj4gU2Vu
dCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4+Pj4KPj4+PiBDb250YWN0Ogo+Pj4+Cj4+Pj4gUGhvbmU6
ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+Pj4+Cj4+Pj4gRW1haWw6
IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86YnJhbmR0LnN0ZWVua2FtcEBnbWFp
bC5jb20+Cj4+Pj4KPj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3
aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPj4+Pgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAtLSAK
Pj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Cj4+IFNlbnQgZnJvbSBG
ZWRvcmEgTGludXggdXNpbmcgVGh1bmRlcmJpcmQKPj4KPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKLS0gCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmthbXAKClNl
bnQgZnJvbSBGZWRvcmEgTGludXggdXNpbmcgVGh1bmRlcmJpcmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

