Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A5D463D37
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638294610;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=powZcATvzndoF7wiTaiIwwjaodqb0x+p3LUZ6yX9xf0=;
	b=HDN1XUAhk0wJuHxgGmcucVCOyjBXX222BdrFFhOgcsP+3OvJzwVQCZuOegFLNnnPdhBfMz
	ojZ+phtxVcK6pa5jy32y2WuTK2+P3X84Sce5f8T2LUnzkfN5xi5eMqnCuVkG98042dVHtV
	5UJ4xXwAYa/SF3uwvMFbnDNSFuS5n1A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-188-_hBWTBsyM3CGncDhmyhsJw-1; Tue, 30 Nov 2021 12:50:08 -0500
X-MC-Unique: _hBWTBsyM3CGncDhmyhsJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8797A1023F4D;
	Tue, 30 Nov 2021 17:50:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34C1D19724;
	Tue, 30 Nov 2021 17:50:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3F16F4BB7C;
	Tue, 30 Nov 2021 17:50:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHnugh011721 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:49:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2F988C15E73; Tue, 30 Nov 2021 17:49:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AC41C15E72
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:49:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10EA5811E7F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:49:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-260-fFKI5wTUMHCH5XX_7wvhwQ-1;
	Tue, 30 Nov 2021 12:49:53 -0500
X-MC-Unique: fFKI5wTUMHCH5XX_7wvhwQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4AF71A008A
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:49:10 +0100 (CET)
Message-ID: <a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
Date: Tue, 30 Nov 2021 18:49:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: My qemu error
To: blinux-list@redhat.com
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
In-Reply-To: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUHnugh011721
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAphbnN3ZXJzIGlubGluZQoKTGUgMzAvMTEvMjAyMSDDoCAxMzo1NSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IHFlbXUtc3lzdGVtLXg4
Nl82NDogd2FybmluZzogJy1zb3VuZGh3IGhkYScgaXMgZGVwcmVjYXRlZCwgcGxlYXNlIHVzZSAK
PiAnLWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4JyBpbnN0ZWFkCj4gYXVkaW86
IERldmljZSBoZGE6IGF1ZGlvZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIHBs
ZWFzZSAKPiBzcGVjaWZ5IGF1ZGlvZGV2PXBhCj4gYXVkaW86IERldmljZSBoZGE6IGF1ZGlvZGV2
IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIHBsZWFzZSAKPiBzcGVjaWZ5IGF1ZGlv
ZGV2PXBhCj4gCkluIHRoZSBjb21tYW5kIHJlbW92ZQotc291bmRodyBoZGEKd2hpY2ggaXMgcmVk
dW5kYW50IHdpdGgKLWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4CmFuZCBwcm9i
YWx5IHJlcGNhY2UKLS1hdWRpb2RldiBwYQpieToKLS1hdWRpb2Rldj1wYWhvd2V2ZXIsIG1heWJl
IHRoaXMgd2hvbGUgc3R1ZmYgaXMgbm90IG5lY2Vzc2FyeTotYXVkaW9kZXYgCnBhLGlkPXBhLG91
dC5taXhpbmctZW5naW5lPW9mZixvdXQubGF0ZW5jeT0yMDAwMApJIGRvbid0IGhhdmUgaXQuCgog
PiAga25vdyBpdCBkb2VzIHdvcmsgdW5kZXIgU2xpbnQsIGJ1dCBub3QgdW5kZXIgRmVkb3JhLCBB
cmNoIG9yIFVidW50dS4KCk1heWJlIHRoZSBrZXJuZWwgeW91IGFyZSBydW5uaW5nIGluIEZlZG9y
YSwgQXJjaCBvciBVYnVudHUgZG9lcyBub3QgaGF2ZSBhCnByb3BlciBjb25maWd1cmF0aW9uIGZv
ciBLVk0sIHJlYWQ6Cmh0dHBzOi8vd3d3LmxpbnV4LWt2bS5vcmcvcGFnZS9UdW5pbmdfS2VybmVs
CgpJbiBTbGludCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgZm91bmQgaW4gb25lIG9mIHRo
ZXNlIGZpbGVzOgovYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjE0Lng2NAovYm9vdC9jb25maWct
Z2VuZXJpYy01LjE0LjEzClRoZXNlIGNvbW1hbmRzOgpjYXQgL3Byb2MvY21kbGluZQp1bmFtZSAt
cgp0ZWxsIHlvdSB3aGljaCBrZXJuZWwgaXMgcnVubmluZywgc28geW91IGtub3cgaG93IGl0IGlz
IGNvbmZpZ3VyZWQuCgpBbHNvLCB0aGVyZSBjb3VsZCBiZSBhbiBpc3N1ZSB3aXRoIHlvdXIgcWVt
dSB2ZXJzaW9uLgoKSW4gU2xpbnQgYXQgdGltZSBvZiB3cml0aW5nOgpkYW5jZVt+XSQgcWVtdS1z
eXN0ZW0teDg2XzY0IC0tdmVyc2lvbgpRRU1VIGVtdWxhdG9yIHZlcnNpb24gNi4wLjAKQ29weXJp
Z2h0IChjKSAyMDAzLTIwMjEgRmFicmljZSBCZWxsYXJkIGFuZCB0aGUgUUVNVSBQcm9qZWN0IGRl
dmVsb3BlcnMKCkNoZWVycywKRGlkaWVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

