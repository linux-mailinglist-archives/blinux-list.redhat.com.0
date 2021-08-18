Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 07D393F0F05
	for <lists+blinux-list@lfdr.de>; Thu, 19 Aug 2021 02:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629331363;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=coK55odQoBqqCdFnfi7SUNExkBIUyVlNRUkSBssAlJM=;
	b=FGq6TMyeYLLSmc0R1bsSrBoQ8bww+AfqL+gQ93foCnFgHrWcP5/X7lVThFtLxNMHgzBrlV
	t7b+NagMshthja/rCESOkVCDmRt53ThIJC5yrvLPu7ZmZ07WgYh5BTSm3GLROORYMpQ9K3
	taebCQie2jSA9cOt0WrM7V1z1v9wH2o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-Wy8oOL7yNVmr0E99b3QbqA-1; Wed, 18 Aug 2021 20:02:41 -0400
X-MC-Unique: Wy8oOL7yNVmr0E99b3QbqA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B70E5879A04;
	Thu, 19 Aug 2021 00:02:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F245360938;
	Thu, 19 Aug 2021 00:02:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 85C491826D01;
	Thu, 19 Aug 2021 00:02:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17INwlpa032296 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Aug 2021 19:58:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 145B4EE847; Wed, 18 Aug 2021 23:58:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EE07EE375
	for <blinux-list@redhat.com>; Wed, 18 Aug 2021 23:58:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0765A18A01A0
	for <blinux-list@redhat.com>; Wed, 18 Aug 2021 23:58:43 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-AV37LUUiPem5WF4r1TaCKQ-1; Wed, 18 Aug 2021 19:58:41 -0400
X-MC-Unique: AV37LUUiPem5WF4r1TaCKQ-1
Received: by mail-ej1-f47.google.com with SMTP id u3so8778805ejz.1
	for <blinux-list@redhat.com>; Wed, 18 Aug 2021 16:58:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=o+PDKmqW3gszKGVYNFmtKmULuJ+qM8c9pOYPs8rMXXA=;
	b=o7PC4Nw80lNi/IW2zqdCvSUjZCGkqHQrYsakk0oznrJzFvY844MCgI8j6Rn/o0UM59
	tiIn/EH90agKjPuyKV4keUQaAjDoCCeEGxC4L9HoNWvhQy6njUKr0h5k8ODf7YCk3dT5
	GbHD/J0IreoltCFsmzpVXyF7o18CBlTxK60S/eZk0FN0mQMkeNXtefJbZ6oSNOfpWp/g
	19VgfI8b3PD8dZ+Yaldj8lmkVY1bzUvWbF8q57dAB/NUDezKROn7PRJ85RiKesaAqeSi
	GZn1k9Yt81H58pAV2DIJsqmQ2rH9MbE4KHaUAGB/UuEL8UN7sym9M/V67WlInJleS6a1
	eVhg==
X-Gm-Message-State: AOAM531HaqSd6Z2P5Nba9b2HGLJC40OuVlufohtC3zs+rT2c4uhD/XsF
	vRhTsJ/ir2NvBbqSoSzWWmw=
X-Google-Smtp-Source: ABdhPJzKPPX9CPb0QyXLtsu9jgqITZW00e45c6uK0/woZuBnErCW60jEsfdOjOLYN76WNIOfcwBKHQ==
X-Received: by 2002:a17:906:5f93:: with SMTP id
	a19mr12813717eju.126.1629331119849; 
	Wed, 18 Aug 2021 16:58:39 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id m15sm814720eds.92.2021.08.18.16.58.39
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 18 Aug 2021 16:58:39 -0700 (PDT)
Date: Thu, 19 Aug 2021 02:58:38 +0300
To: orca-list <orca-list@gnome.org>
Subject: Re: [orca-list] Anyone else experiencing Firefox 91 crashes?
Message-ID: <20210818235838.5gowm77wyag2cx7w@alex-pc>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
	<20210816172548.7pw3tmt57aqoc2ng@alex-pc>
	<a7b7f280-7231-f43e-504b-fa113bac8072@slint.fr>
	<ac1c79ea-eac8-a1f8-85b7-d884609c1546@informal.com.br>
MIME-Version: 1.0
In-Reply-To: <ac1c79ea-eac8-a1f8-85b7-d884609c1546@informal.com.br>
User-Agent: NeoMutt/20210205
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
Cc: blinux-list@redhat.com
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBdWcgMTYsIDIwMjEgYXQgMDQ6NTA6NTNQTSAtMDMwMCwgSm9zw6kgVmlsbWFyIEVz
dMOhY2lvIGRlIFNvdXphIHdyb3RlOgo+IE92ZXIgYW5kIG92ZXIgYWdhaW4sIHRob3VnaCBJIHN0
aWxsIGRvbid0IGtub3cgaG93IHRvIHJlcHJvZHVjZSBpdC4KPiBNeSBkaXN0cm8gaXMgYXJjaCBs
aW51eCB3aXRoIGFsbCB1cGRhdGVzLgoKYnVnWzFdIHdhcyBmaXhlZCBpbiBmaXJlZm94IDkxLjAu
MSBuZXcgcmVsZWFzZSBpcyBhbHJlYWR5IGF2YWlsYWJsZQppbiBhcmNobGludXguCgpbMV06IGh0
dHBzOi8vYnVnemlsbGEubW96aWxsYS5vcmcvc2hvd19idWcuY2dpP2lkPTE3MTc1NzUKCj4gT24g
OC8xNi8yMSAzOjA0IFBNLCBEaWRpZXIgU3BhaWVyIHZpYSBvcmNhLWxpc3Qgd3JvdGU6Cj4gPiBU
aGlzIGlzc3VlIGhhcHBlbnMgaGVyZSBvbiBTbGludCBvbmx5IGlmIE9yY2EgaXMgYWN0aXZlICh1
c2luZyBhCj4gPiByZXBhY2thZ2VkIG9mZmljaWFsIGJpbmFyeSBvZiBmaXJlZm94LTkxKS4KPiA+
Cj4gPiBUaGlzIGlzIGNvbnNpc3RlbnQgd2l0aCBBbGV4YW5kZXIncyBhc3N1bXB0aW9uCj4gPgo+
ID4gQ2hlZXJzLAo+ID4gRGlkaWVyCj4gPiAtLQo+ID4gRGlkaWVyIFNwYWllcgo+ID4gU2xpbnQg
bWFpbnRhaW5lcgo+ID4gZGlpZGVyIChhdCkgc2xpbnQgKGRvdCkgZnIKPiA+Cj4gPgo+ID4gTGUg
MTYvMDgvMjAyMSDDoCAxOToyNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+ID4gPiBPbiBNb24sIEF1ZyAxNiwgMjAyMSBhdCAwMjo0NjoyNVBNICswMDAw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbAo+ID4gPiBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gPiA+
IEhlbGxvIGxpc3QsCj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IHJlbWVtYmVyIHdoZW4gZGlkIEkg
dXBkYXRlIG15IHNvZnR3YXJlIHRoZSBsYXN0IHRpbWUsCj4gPiA+ID4gYnV0IEkgaGF2ZQo+ID4g
PiA+IEZpcmVmb3ggOTEgNjQtYml0IGluc3RhbGxlZCBhbmQgaW4gdGhlIGZldyByZWNlbnQgZGF5
cywgaXQncyBjcmFzaGluZwo+ID4gPiA+IHF1aXRlIGludGVuc2l2ZWx5Lgo+ID4gPiA+Cj4gPiA+
ID4KPiA+ID4gPiBMaWtlLCBJIGxhdW5jaCBpdCwgdHlwZSBzb21ldGhpbmcgaW50byB0aGUgc2Vh
cmNoIGZpZWxkLi4uIENyYXNoIQo+ID4gPiA+Cj4gPiA+ID4gSSBsYXVuY2ggaXQgYWdhaW4sIHR5
cGUgZ29vZ2xlIHVybCB0byB0aGUgc2VhcmNoIGZpZWxkLCBlbnRlciBteSBzZWFyY2gKPiA+ID4g
PiB0ZXJtIG9uIHRoZSBwYWdlIGFuZCB3aGlsZSB0eXBpbmcuLi4gQ3Jhc2ghCj4gPiA+ID4KPiA+
ID4gPiBJIHdhbnQgdG8gaW5zdGFsbCBhbiBhZGRvbiBhbmQgZXZlbiBpZiBJIHNvbWVob3cgbWFu
YWdlIHRvIGVudGVyIG15Cj4gPiA+ID4gcXVlcnkgYW5kIGdldCB0aGUgc2VhcmNoIHJlc3VsdHMs
IHdoZW4gSSBhY3R1YWxseSBjbGljayBvbgo+ID4gPiA+IG9uZS4uLiBDcmFzaCEKPiA+ID4gPgo+
ID4gPiA+Cj4gPiA+ID4gSXQncyByZWFsbHkgYW5ub3lpbmcsIHRoZSBicm93c2VyIGlzIGFsbW9z
dCB1bnVzYWJsZS4gTXkgY2FjaGUgYW5kCj4gPiA+ID4gY29va2llcyBhcmUgY2xlYXJlZCBhdXRv
bWF0aWNhbGx5IGFmdGVyIGV2ZXJ5IHJ1biwgc28gdGhpcyBzaG91bGRuJ3QgYmUKPiA+ID4gPiB0
aGUgc291cmNlIG9mIHRoZSBpc3N1ZXMuCj4gPiA+ID4KPiA+ID4gPiBJJ3ZlIHRyaWVkIHRoZSB0
cm91Ymxlc2hvb3RpbmcgbW9kZSBhbmQgaXQgYmVoYXZlcyBpbiB0aGUgc2FtZSB3YXksIHNvCj4g
PiA+ID4gZXh0ZW5zaW9ucyBhbHNvIGRvbid0IHNlZW0gdG8gYmUgZ3VpbHR5Lgo+ID4gPiA+Cj4g
PiA+ID4gSSBoYXZlIGV2ZW4gZG93bmxvYWRlZCBhIHBvcnRhYmxlIHZlcnNpb24gb2YgdGhlIGJy
b3dzZXIgZnJvbSB0aGUKPiA+ID4gPiBNb3ppbGxhIHdlYnNpdGUgYW5kIGl0IGNyYXNoZXMgYXMg
d2VsbC4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gVGhlIG9ubHkgdGhpbmcgdGhhdCBjb21lcyBv
biBteSBtaW5kIHRoYXQgaXQncyBhIGJ1ZyBpbiB0aGUKPiA+ID4gPiBicm93c2VyLCBidXQKPiA+
ID4gPiBJIGRpZG4ndCBmaW5kIGFueXRoaW5nIGFib3V0IGl0IHdoZW4gc2VhcmNoaW5nLgo+ID4g
PiA+Cj4gPiA+ID4KPiA+ID4gPiBEb2VzIGFueW9uZSBoYXZlIHNpbWlsYXIgZXhwZXJpZW5jZXM/
Cj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEZpcmVmb3ggOTEuMCA2NC1iaXQsIFVidW50dSBtYXRl
IDIwLjA0IDY0LWJpdC4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gQmVzdCByZWdhcmRzCj4gPiA+
ID4KPiA+ID4gPgo+ID4gPiA+IFJhc3Rpc2xhdgo+ID4gPgo+ID4gPiBpIGZhY2VkIHRoaXMgcHJv
YmxlbSB0b28uIGZvciBub3cgSSBoYXZlIHJvbGxlZCBiYWNrIHRvIGZmIDkwLjAuMgo+ID4gPiBh
bmQgdHJ5IHRvIHVzZSBjaHJvbSB3aGVuZXZlciBwb3NzaWJsZS4KPiA+ID4gSSB0aGluayB0aGVz
ZSBjcmFzaGVzIGhhdmUgc29tZXRoaW5nIHRvIGRvIHdpdGggdGhlIGFjY2Vzc2liaWxpdHkKPiA+
ID4gc3RhY2suIG90aGVyd2lzZSB0aGV5IHdvdWxkIGhhdmUgYmVlbiBub3RpY2VkIGVhcmxpZXIu
Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IFNpbmNlcmVseSwgQWxleGFuZGVyCj4gPiA+CgotLQpTaW5j
ZXJlbHksIEFsZXhhbmRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

