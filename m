Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9DE3F284E42
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 16:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601995688;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UH+8CzV3VcaWYnA4txTck7eVCruCp2yHoGJCC3FcLh0=;
	b=ZSHhd1bHXtIp4qxRrc6dN6pP5bVroDwiI5LgAb8rzCX0o3bk1Ky9kDI86bnK7JI2ko7iMV
	M3aWxSNPXre/1+Pem0S/iTWvX7ZIHYygjLj/XSjsCulwJ6fBqtNYlrDmaZch75EYyb6Qj6
	mpMyaTBHGR2MEnqRnAd2wq/PwieBQ8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-OiYmx8XGO7OX_QUefD8b2Q-1; Tue, 06 Oct 2020 10:48:06 -0400
X-MC-Unique: OiYmx8XGO7OX_QUefD8b2Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8D7D804011;
	Tue,  6 Oct 2020 14:48:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A8C1702E7;
	Tue,  6 Oct 2020 14:48:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0358544A7B;
	Tue,  6 Oct 2020 14:47:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096ElqRt012963 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 10:47:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B622C2028CCE; Tue,  6 Oct 2020 14:47:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B12952022792
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 14:47:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C99228582AC
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 14:47:47 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-149-iKZp2q2pP0SF7RJQkprIFA-1;
	Tue, 06 Oct 2020 10:47:45 -0400
X-MC-Unique: iKZp2q2pP0SF7RJQkprIFA-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A995ABE280
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 15:46:57 +0200 (CEST)
Subject: Re: VPN accessibility?
To: blinux-list@redhat.com
References: <alpine.OSX.2.23.453.2010061028110.5318@dans-mac-mini.home>
Message-ID: <32e26bf1-4bf3-b0bf-a603-b5f23b0535f0@slint.fr>
Date: Tue, 6 Oct 2020 16:47:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2010061028110.5318@dans-mac-mini.home>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 096ElqRt012963
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpvcGVudnBuIGlzIGluc3RhbGxlZCBieSBkZWZhdWx0IGluIFNsaW50LgoKc3NodXRsZSBp
cyBhdmFpbGFibGUgZnJvbSBodHRwczovL3NsYWNrYnVpbGRzLm9yZywgY2YuCmh0dHA6Ly9zbGFj
a2J1aWxkcy5vcmcvcmVwb3NpdG9yeS8xNC4yL25ldHdvcmsvc3NodXR0bGUvCgpub3JkdnBuIGlz
IGFsc28gYXZhaWxhYmxlOgpodHRwOi8vc2xhY2tidWlsZHMub3JnL3JlcG9zaXRvcnkvMTQuMi9u
ZXR3b3JrL25vcmR2cG4vCgpPdGhlciB2cG4gc29mdHdhcmUgYXJlIGF2YWlsYWJsZToKaHR0cDov
L3NsYWNrYnVpbGRzLm9yZy9yZXN1bHQvP3NlYXJjaD12cG4mc3Y9MTQuMgoKQmVzdCByZWdhcmRz
LApEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKaHR0cHM6Ly9zbGludC5mcgoKTGUgMDYv
MTAvMjAyMCDDoCAxNjozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IENvbnNpZGVyIHRoaXMgYWxzbywgbm90ZSB0aGUgbmFtZSBzdGFydHMgd2l0aCBk
b3VibGUgcydzLCBpdCBtaWdodCBiZSBpbiBhIHJlcG9zaXRvcnkgYWxyZWFkeToKPiAKPiBQcm94
eSBzZXJ2ZXIgdGhhdCB3b3JrcyBhcyBhIHBvb3IgbWFuJ3MgVlBOCj4gaHR0cHM6Ly9naXRodWIu
Y29tL3NzaHV0dGxlL3NzaHV0dGxlCj4gCj4gT24gVHVlLCA2IE9jdCAyMDIwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBIaSBldmVyeW9uZSwKPj4gSSBh
bSBhYm91dCB0byBpbnN0YWxsIFNsaW50IGZvciB0aGUgZmlyc3QgdGltZSwgc28gaWYgYWxsIGdv
ZXMgd2VsbCwgSSBzaG91bGQgYmUgaGF2aW5nIG15IGZpcnN0IExpbnV4IE9TIHVwIGFuZCBydW5u
aW5nIHNvb24uIFRoZXJlIG1pZ2h0IGJlIHVuZXhwZWN0ZWQgY2hhbGxlbmdlcyBhcyBhIG5ld2Jp
ZSwgYnV0IG92ZXJhbGwsIEkgaG9wZSBpdCBnb2VzIHdlbGwuSSdtIGxvb2tpbmcgaW50byBWUE4g
b3B0aW9ucyBmb3Igb25jZSBJIGdldCB0aGUgT1MgaW5zdGFsbGVkLiBJIGtub3cgc29tZSBWUE4g
c2VydmljZXMgaGF2ZSBmcmVlIHRyaWFscywgYnV0IEknZCByYXRoZXIganVzdCBhc2sgeW91IGd1
eXMgd2hpY2ggVlBOIGRvIHlvdSB0aGluayBoYXMgYSBmYWlybHkgYWNjZXNzaWJsZSBhcHAgb25j
ZSB5b3UgZG93bmxvYWQgaXQgb24gTGludXg/Cj4+IFRoYW5rcywKPj4gU0wKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

