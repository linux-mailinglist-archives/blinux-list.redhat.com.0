Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B664744DE
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 15:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639492008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K+k1ubhvmyUFaz1DsKcVvxuElsERBlZTO3Dh3HNzW6E=;
	b=BDA5WePbnKZi4i3dWJ+GIQAawKOO9/ERxZhdG/nnXVkS/dONT5/rVOD8FbolkiQ+L2iA+W
	9uEf0/XxXuJo+1v5z1sAL6m1LqVv5xUh+vAAN1DcHGfsdjGWv9v6MEwmB0snN72gy0ZklJ
	2wNIMAwgUskdLVX5B7OzY2iLS/AM0V0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-TJ9W3jstOkawy0h1FSpAVQ-1; Tue, 14 Dec 2021 09:26:43 -0500
X-MC-Unique: TJ9W3jstOkawy0h1FSpAVQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49F5D80417C;
	Tue, 14 Dec 2021 14:26:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06EA360C9F;
	Tue, 14 Dec 2021 14:26:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19ED54CA93;
	Tue, 14 Dec 2021 14:26:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEEQD4M006657 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 09:26:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 31487401E22; Tue, 14 Dec 2021 14:26:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D8F9401E20
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 14:26:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F9901C1CD41
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 14:26:13 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
	[209.85.216.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-588-_QDkQD3WNnS3zP1kpSl1LA-1; Tue, 14 Dec 2021 09:26:11 -0500
X-MC-Unique: _QDkQD3WNnS3zP1kpSl1LA-1
Received: by mail-pj1-f51.google.com with SMTP id iq11so14428957pjb.3
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 06:26:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=ZdL4PrwIgcTdP/4R0PELSAN9qpcG8g0wmRRWBhmW1vY=;
	b=OEbhRO4Bm0IR+5kDiDTXb2zFcX8INj7/LwqmyCk3DKnIiXcetZfunUOX3/4c6GlGky
	zsz1UAFQo89zOcTsVGDOJd1S113YsVWXEALAswwfehIAzcsysKoTAatHr7nj/wexHB9Y
	qJweojJv4kFgbniz2Xu7DjzjcSbsWqQPZDWtjIRkbkiLSN+xSVwvCjj+BsXs3R4pzi7q
	ojqdvTkRLW8Ua8GfKcFrCfg7HHNzPb3SBbSJswVexfr0ljuUj0e4t3+Cr69ssfyAxNRj
	yt1uZS+Bc2h5WEtxNGzx6E8CR9iAHWOy0nEHUDHhH0NdZeInxigUPddIt9w6mTou7UMd
	POjg==
X-Gm-Message-State: AOAM533lwNSua6xC2+m4ryG0AxX5Lsl5JFKwtnU+Bkw14fKunrbbJogL
	AjTpB2FMUB/nWW44OUO4rfyHYvDptUI=
X-Google-Smtp-Source: ABdhPJx6830mXie4DNkRIcetuz+jGBxlnzr9PUUbhWJ11/n9YjkFZMcSsSSTR2tzIfOhWxq/eRb0Og==
X-Received: by 2002:a17:90a:e395:: with SMTP id
	b21mr5772874pjz.103.1639491969776; 
	Tue, 14 Dec 2021 06:26:09 -0800 (PST)
Received: from [192.168.1.6] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99])
	by smtp.gmail.com with ESMTPSA id g19sm26188pfc.145.2021.12.14.06.26.09
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Dec 2021 06:26:09 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Attempting a Jenux install, again.
Date: Tue, 14 Dec 2021 07:26:07 -0700
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
Message-Id: <424F9FC7-05D3-450F-ADCE-0AA49C8D68A4@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BEEQD4M006657
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgeW91IGNvdWxkIGFsd2F5cyB0cnkgU0xJTlQuIEl04oCZcyBpbnN0YWxsZXIgd2lsbCBl
dmVuIGRldGVjdCBpZiB5b3UgYXJlIG9uIGFuIG9sZGVyIEJJT1Mgb3IgdGhlIG5ld2VyIEVGSSBh
bmQgc291bmQgdG9uZXMgdG8gbm90aWZ5IHlvdS4gSW5zdGFsbCBpcyBhIGJyZWV6ZSBhZnRlciB0
aGF0LgoKLUVyaWMKCgo+IE9uIERlYyAxNCwgMjAyMSwgYXQgNDo1MCBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4g
Cj4gSGksCj4gCj4gCj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdp
dmUgaXQgYSBza2lwIGZvciBub3csIHRoYXQgaXMgdW5sZXNzIHRoZSBkZXYgYWN0dWFsbHkgZml4
ZXMgdGhlIHRoaW5nLgo+IAo+IAo+IEkgYW0gb24gRmVkb3JhLCBmb3Igbm93LCBiZWNhdXNlIGl0
IHdhcyB0aGUgbmVhcmVzdCBVc2Igc3RpY2sgSSBjb3VsZCBncmFiIHF1aWNrbHkuCj4gCj4gCj4g
SSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5vdGhlciBnby4gV2h5IG5v
dD8KPiAKPiBPbiAyMDIxLzEyLzE0IDEzOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+PiAgb3IgTWFuamFybyBBcmNoaXRlY3QuCj4+IAo+PiBQZXJzb25hbGx5
LiBJJ3ZlIGhhZCBzdWNjZXNzIHdpdGggdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlk
ZWQgaW5zdGFsbGVyICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290
IHVwIHRhbGtpbmcsIHdlbnQgdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3Bl
YWt1cCBhbmQgdGhlbiBwdXQgc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2lu
ZG93IG1hbmFnZXIgb24gb25jZSB0aGUgc3lzdGVtIHdhcyBpbnN0YWxsZWQuCj4+IAo+PiAKPj4g
SmVudXggaGFzIG5ldmVyIHJlYWxseSB3b3JrZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRh
bCBhdCBhbGwsIHdoZXJlYXMgdGhlIG9mZmljaWFsIGFyY2ggSVNPIGlzIHdvcmtpbmcgcmF0aGVy
IHdlbGwsIGFuZCBJIGR1bm5vIGlmIHRoZSBBcmNoaXRlY3QgZWRpdGlvbiBpcyAzNi82NCBiaXQg
b3IgMzJiaXQgb25seSBvciA2NGJpdCBvbmx5LiBBZG1pdHRlZGx5LCBJJ3ZlIGdvdCBhIDY0Yml0
IFVFRkkgc3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3MgZmxhd2xlc3NseSBvbiBpdCBo
b3dldmVyLCBidXQgWU1NViBvbiB0aGF0IG9uZVllcywgYnV0IHlvdSBwcm9iYWJseSBkb24ndCB3
YW50IHRvIGhlYXIgaXQgaWYgeW91IGFyZSBzZXQgb24gdXNpbmcgSmVudXggaG93ZXZlci4KPj4g
Cj4+IE9uIDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4gSGkgYWxsLAo+Pj4gCj4+PiBJIGRlY2lkZWQgdG8gZ2l2ZSBKZW51eCBhbm90
aGVyIGdvLCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3aGF0IEkgdHJpZWQsIEkgY291bGRuJ3QgZ2V0
IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGluIHRvIHRoZSBzeXN0ZW0uCj4+PiAKPj4+
IERvZXMgYW55b25lIGhhdmUgYW55IGFkdmljZT8KPj4+IAo+Pj4gQWxzbywgaWYgdGhpcyBkb2Vz
bid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIE1hbmphcm8gYXJjaGl0
ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxl
IGFnbywgYW5kIGlmLCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtl
IHRvIGdpdmUgdGhhdCBvbmUgYSBnby4KPj4+IAo+Pj4gVGhhbmtzIHNvIGxvbmcuCj4+PiAKPj4+
IFdhcm0gcmVnYXJkcywKPj4+IAo+Pj4gQnJhbmR0IFN0ZWVua2FtcAo+Pj4gCj4+PiBTZW50IGZy
b20gbXkgTWFjQm9vayBBaXIKPj4+IAo+Pj4gQ29udGFjdDoKPj4+IAo+Pj4gUGhvbmU6ICsyNyAo
MCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+Pj4gCj4+PiBFbWFpbDogYnJhbmR0
LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4K
Pj4+IAo+Pj4gVHdpdHRlcjogQGJyYW5kdHN0ZWVua2FtcCA8aHR0cDovL3d3dy50d2l0dGVyLmNv
bS9icmFuZHRzdGVlbmthbXA+Cj4+PiAKPj4+IAo+Pj4gCj4+PiAKPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+PiAKPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IC0tIAo+IFdhcm0gcmVn
YXJkcywKPiAKPiBCcmFuZHQgU3RlZW5rYW1wCj4gCj4gU2VudCBmcm9tIEZlZG9yYSBMaW51eCB1
c2luZyBUaHVuZGVyYmlyZAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

