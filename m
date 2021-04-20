Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3B3365FF8
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 21:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618945323;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Po1B/eJwfYI5g4iJWD3bNV6MpmNGBhtTDDyvr3d0WZo=;
	b=Vm98ypeFoNtYdnsY86GKg4d++Zrep3Y/rcjZI+qimvLmVBVx5NIIRDRSnHDiCYy7cF1OTf
	bbYku00pdbGXR0K92kkfy0bH3EBZjoi8uvY+CoJ7eStjfixkg30D9uNEcRcnDg/Qzyd/J9
	JMLnbuUIY/NJh+L4TGBY6ktefPdDBaI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-4Oh9Xo0FPrq1lT76YITjsg-1; Tue, 20 Apr 2021 15:02:00 -0400
X-MC-Unique: 4Oh9Xo0FPrq1lT76YITjsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B967107ACC7;
	Tue, 20 Apr 2021 19:01:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4ADB60C5F;
	Tue, 20 Apr 2021 19:01:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5877E1806D16;
	Tue, 20 Apr 2021 19:01:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KJ1hNE032679 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 15:01:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E0E169D495; Tue, 20 Apr 2021 19:01:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9BF2C77CD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 19:01:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 773BC101A52C
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 19:01:39 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-113-U5KYSNhDPLiMO0Olcz9O9w-1; Tue, 20 Apr 2021 15:01:37 -0400
X-MC-Unique: U5KYSNhDPLiMO0Olcz9O9w-1
Received: by mail-ed1-f41.google.com with SMTP id bx20so45250086edb.12
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 12:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=JjSNr+7w+kp4zrGqKPR603dR9jt79i2io0dJblpOb5E=;
	b=nhMp9LEvm66iPeuak6Y866xL+6FleSVU3NXVnCnlXPW/qj3tW0wydMH7kqJsdRNvVt
	JtdRbGCl1b5f0bF7J5C2dEYQv3J1dOYyI8nPtZoYlZFcMMAXCfuTBQnA9KxZIUgM6mKe
	bCOvN61dzJnSaV1fznCSD/XHFMUgPgFzagkBSwnlrgCtUrEO+2HnZAs0kQdHj1bM2WB/
	koakCWWvfrGv8K5cKuewREsZUFQveok5RXbbnkCcsGz/H3mZQKV1YiBP7bZHu5hatbgS
	7FsKswtgjKMZUe0K1EiiJVco/JLwKcv++nUAowi413yWQoUdNOXaNQP0lS35XiezaGEO
	/7jQ==
X-Gm-Message-State: AOAM531llz69m3BtCXtI5/Mp0t5kFJ+rAGbVqSHhYAjFGD1dxrUNulfp
	7bz9w6DrbrYPP0WVl3d5/gpPTdwBqmD/1Q==
X-Google-Smtp-Source: ABdhPJzHD9c9FjZupgYfMlCEnOnUCrxxgPcc+IliJWX7Y/W9B9TyCHh7ntEwl2kwUYMIBxobNHoGNg==
X-Received: by 2002:a05:6402:2808:: with SMTP id
	h8mr12472103ede.249.1618945295384; 
	Tue, 20 Apr 2021 12:01:35 -0700 (PDT)
Received: from [192.168.1.3] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	k16sm13335112ejv.37.2021.04.20.12.01.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Apr 2021 12:01:34 -0700 (PDT)
Subject: Re: How to navigate - how to flat review
To: blinux-list@redhat.com
References: <739c7f2c-1088-e093-f663-f7a83ed192ed@gmail.com>
	<27BE7A32-1BA8-47DA-85E6-5004672872F3@yahoo.com>
Message-ID: <8a4afffd-00a4-1d26-bd2f-2a39c01dc1e9@gmail.com>
Date: Tue, 20 Apr 2021 21:01:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <27BE7A32-1BA8-47DA-85E6-5004672872F3@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKV2hlbiBpbiBhIHRlcm1pbmFsLCB3aGF0IEkgcGVyc29uYWxseSBkbyB0
byBuYXZpZ2F0ZSBvdXRwdXQgbGluZSBieSAKb3V0cHV0IGxpbmUgaXMgb3JjYSBwbHVzIHUgYW5k
IG8gdG8gZ28gdG8gdGhlIHByZXZpb3VzIGFuZCBuZXh0IGxpbmUgCnJlc3BlY3RpdmVseSwgb3Jj
YSBwbHVzIGogYW5kIGwgdG8gbmF2aWdhdGUgYnkgd29yZCBvbiB0aGUgc2FtZSBsaW5lLCAKYW5k
IG9yY2EgcGx1cyBrIHRvIHNwZWxsIHRoZSB3b3JkIGZsYXQgcmV2aWV3IGlzIGN1cnJlbnRseSBm
b2N1c2VkIG9uLgoKSW4gYWRkaXRpb24sIEkgYm91bmQgb3JjYSBwbHVzIGEgdG8gY29weSBmbGF0
IHJldmlldyBjb250ZW50IHRvIApjbGlwYm9hcmQsIGFuZCBvcmNhIGNvbnRyb2xsIGEgdG8gYXBw
ZW5kIGZsYXQgcmV2aWV3IGNvbnRlbnQgdG8gY2xpcGJvYXJkLgoKQmVzdCByZWdhcmRzLgpGcmFu
Y2lzY28uCk9uIDQvMjAvMjEgODoyMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBJIGNhbuKAmXQgc2VlbSB0byBnZXQgaXQgdG8gd29yayBhcyBJIGFtIHdh
bnRpbmcgd2hlbiByZWFkaW5nIHRoZSBvdXRwdXQgZnJvbSB0ZXJtaW5hbC4gSWYgSSBhbSB3YW50
aW5nIHRvIHJlYWQgdGhlIHZlcnkgbGFzdCB0aGluZyB0aGF0IGlzIG91dHB1dCBhbmQgdGhlbiBn
byB1cCBieSBsaW5lIGZyb20gdGhlcmUsIGlzIHRoaXMgY29uc2lkZXJlZCBnb2luZyB0byB0aGUg
Y3VycmVudCBsaW5lIG9yIGdvaW5nIHRvIHRoZSBwcmV2aW91cz8KPiBFeGFtcGxlLiBTYXkgSSBy
dW4sIOKAnGFwdCBpbnN0YWxsIHVwZ3JhZGXigJ0sIHdoYXQgd291bGQgbWFrZSBvcmNhIHJlYWQg
dGhlIGxhc3QgbGluZSBhc2tpbmcsIOKAnWFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBpbnN0YWxs
PyBZL27igJ0uIFRoZW4gcmVhZCB1cCBhbmQgZG93biB0aGUgbGluZXMgYmVmb3JlIHRoaXMgdG8g
cmVhZCB0aGUgcGFja2FnZXMgYW5kIG90aGVyIG91dHB1dC4KPgo+Cj4g4oCcIE5ldmVyIGJlbmQg
eW91ciBoZWFkLiBBbHdheXMgaG9sZCBpdCBoaWdoLiBMb29rIHRoZSB3b3JsZCBzdHJhaWdodCBp
biB0aGUgZXllLuKAnQo+IH4gSGVsZW4gS2VsbGVyCj4KPj4gT24gQXByIDIwLCAyMDIxLCBhdCA2
OjQyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPj4KPj4g77u/SGVsbG8gdGhlcmUsCj4+Cj4+Cj4+IEkgYmVsaWV2
ZQo+Pgo+PiBodHRwczovL2hlbHAuZ25vbWUub3JnL3VzZXJzL29yY2Evc3RhYmxlL2NvbW1hbmRz
X2ZsYXRfcmV2aWV3Lmh0bWwuZW4KPj4KPj4gc2hvdWxkIGdpdmUgeW91IGFsbCB0aGUgaW5mbyB5
b3UgbmVlZC4KPj4KPj4gRm9yIGZ1cnRoZXIgaGVscCBhbmQgY29tbWFuZHMsIHJlYWQKPj4KPj4g
aHR0cHM6Ly9oZWxwLmdub21lLm9yZy91c2Vycy9vcmNhL3N0YWJsZQo+Pgo+PiB0aGF0J3MgT3Jj
YSdzIHVzZXIgZ3VpZGUsIHdoaWNoIGFsc28gY2FuIGJlIGFjY2Vzc2VkIGJ5IGRvaW5nIG9yY2Et
K2gsIGYxLgo+Pgo+PiBIb3BlIHRoaXMgaGVscHMuCj4+Cj4+IEJlc3QgcmVnYXJkcy4KPj4KPj4g
RnJhbmNpc2NvLgo+Pgo+Pj4gT24gNC8yMC8yMSAyOjE5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gMS4gSXMgdGhlcmUgYSBjb21t
YW5kIHRvIGhhdmUgb3JjYSByZXBlYXQgdGhlIGxhc3QgbGluZSB0aGF0IGl0IHNhaWQgYWxsb3dl
ZD8KPj4+IDIuIEhvdyBjYW4gSSBlYXNpbHkgbmF2aWdhdGUgdGhlIG91dHB1dCBmcm9tIHRlcm1p
bmFsIHdpdGggb3JjYT8KPj4+Cj4+PiDigJwKPj4+IDMuIFNpbWlsYXIgdG8gYWJvdmUsIGJ1dCBz
YXkgdGhhdCB5b3UgYXJlU2ltaWxhciB0byBhYm92ZSwgYnV0IHNheSB0aGF0IHlvdSBhcmUgbmF2
aWdhdGluZyBqdXN0IHNvbWV3aGVyZSBpbiBzZXR0aW5ncyBmb3IgZXhhbXBsZS4gSXMgaXQgcG9z
c2libGUgdG8gbmF2aWdhdGUgIG1vcmUgZ3JhbnVsYXIgYW5kIGdvIHRocm91Z2ggYSBsaW5lIG9y
IHBhcmFncmFwaCBieSBlYWNoIHdvcmQgb3IgbGluZSBpbnN0ZWFkIG9mIGp1c3QgZG9pbmcgc2hp
ZnQgdGFiIHRvIGdvIGJhY2sgYW5kIHRhYiB0byBnbyBmb3J3YXJkIGFnYWluIHRvIHJlYWQgY3Vy
cmVudCBsaW5lPwo+Pj4KPj4+Cj4+PiDigJwgTmV2ZXIgYmVuZCB5b3VyIGhlYWQuIEFsd2F5cyBo
b2xkIGl0IGhpZ2guIExvb2sgdGhlIHdvcmxkIHN0cmFpZ2h0IGluIHRoZSBleWUu4oCdCj4+PiB+
IEhlbGVuIEtlbGxlcgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

