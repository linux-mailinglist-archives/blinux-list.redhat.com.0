Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6383D4BB8B8
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 12:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645185234;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9sgbEncSqCUqkPo5Sj4wGtq5OoXt0RX8Xt+3mYgU3+8=;
	b=WlmwiLzR4a+xT6aV1D8SqfMIBEzb8Rp7KkoOl4bLvLrYcZxSy9xSL5EbTOnt89spJ52Nk4
	85J/5lF6qtlYzRzJqWvcGV2BkXo/juQEvEls2FejzxlXnrvuR58a8U+uaJ2LDqnW8NIxw2
	9+zumEybpBYlVRfGdN8uALgtMpcdgyU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-UIrz2Iy9NK29RkWCOA9QVA-1; Fri, 18 Feb 2022 06:53:53 -0500
X-MC-Unique: UIrz2Iy9NK29RkWCOA9QVA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 324A2814243;
	Fri, 18 Feb 2022 11:53:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFDBE6E20F;
	Fri, 18 Feb 2022 11:53:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A40A4BB7B;
	Fri, 18 Feb 2022 11:53:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IBp3Mk031439 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 06:51:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C176E201AC58; Fri, 18 Feb 2022 11:51:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCEC82024CCE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 11:50:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDF77299E759
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 11:50:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-270-E7XzFIsFOVqMajFDXogPOA-1; Fri, 18 Feb 2022 06:50:49 -0500
X-MC-Unique: E7XzFIsFOVqMajFDXogPOA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0VQ03qMMz16ln
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 06:50:48 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0VQ02ht8zcbc; Fri, 18 Feb 2022 06:50:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0VQ026wdzcbP
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 06:50:48 -0500 (EST)
Date: Fri, 18 Feb 2022 06:50:48 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: debuan getting web suppression
In-Reply-To: <9aff1288-b3de-f927-a3c1-ac1f9a18fa46@slint.fr>
Message-ID: <138b6fd3-6277-11e-1b9b-70ff1e6f37eb@panix.com>
References: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
	<9aff1288-b3de-f927-a3c1-ac1f9a18fa46@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IBp3Mk031439
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

bXkgYmFkISAgSSBmb3Jnb3QgYWJvdXQgdGhhdCB2IGluIHRoZSBkaXN0cm8gbmFtZSBhbmQgaGFk
IGRvd25sb2FkZWQgYW4KZWFybGllciB2ZXJzaW9uIHRvby4KCgpPbiBGcmksIDE4IEZlYiAyMDIy
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBUaGVyZSBhcmUg
ZGViaWFuIGFuZCBkZXZ1YW4gKGRlYmlhbiB3aXRob3V0IHN5c3RlbWQpLCBidXQgbm8gZGVidWFu
Lgo+Cj4gRGlkaWVyCj4KPiBMZSAxOC8wMi8yMDIyID8gMTE6MTgsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+ID4gRm9yIG5vdyBhbmQgSSBkb24ndCBrbm93
IGhvdyBmYXIgYmFjaywgZGVidWFuIGhhcyBiZWVuIGdldHRpbmcgd2ViCj4gPiBzdXBwcmVzc2lv
bi4gIFRoaXMgY2FuIGJlIGNhbGxlZCB3ZWIgc3VwcHJlc3Npb24gc2luY2UgcG9wdWxhcml0eSBp
cyBub3QKPiA+IHRoZSBvbmx5IHdheSB0byBoYXZlIHRoaW5ncyBtb3ZlZCB1cCBpbiB3ZWIgcmFu
a2luZ3MuICBUaGlzIGFsc28gaGFwcGVucwo+ID4gYnkgbWVhbnMgb2YgbWFuaXB1bGF0aW9uIG9m
IGtleXdvcmRzIGFtb25nIG90aGVyIHN0cmF0ZWdpZXMuICBJIGRvbid0IGtub3cKPiA+IGlmIGRl
YnVhbiBnb3Qga2lsbGVkIG9mZiBieSB0aGUgcGFuZGVtaWMgaW4gYWRkaXRpb24gdG8gd2ViIHN1
cHByZXNzaW9uCj4gPiBidXQgdGhpcyBpcyB3aGF0IGhhcyBoYXBwZW5lZC4KPgo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

