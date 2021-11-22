Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B826B4592D5
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 17:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637597807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L+tXzl7dWwU2B5XfyjTsHi4tVRYoKpj8Vw2b+ryIR8w=;
	b=h3O5BZpM2cyiB6IjwP1+l1HlrJwdq59GRHoV35SssQgtDHNzUCzvu6obW/5gdKnWBER5wn
	x495iRzmfpC6Q7EimPlYLzNpRL8dyZvSPr4Z26Y0cggKxfX5XAT+l2wKi4C4lgCAZUXwqG
	CNIeYT98J2K2E13eRtYvg0RPSfvokOg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-Zj_cKVtTPeaamT3k2xbPTA-1; Mon, 22 Nov 2021 11:16:43 -0500
X-MC-Unique: Zj_cKVtTPeaamT3k2xbPTA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07ED98799EE;
	Mon, 22 Nov 2021 16:16:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBB7E7945D;
	Mon, 22 Nov 2021 16:16:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 013074A703;
	Mon, 22 Nov 2021 16:16:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMGGWUD023905 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 11:16:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1155440CFD15; Mon, 22 Nov 2021 16:16:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A083400DFBC
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:16:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8D03801212
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 16:16:31 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-313-FqzRFjMAOA6CcsGSb-TCDw-1;
	Mon, 22 Nov 2021 11:16:29 -0500
X-MC-Unique: FqzRFjMAOA6CcsGSb-TCDw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 92281A1D09
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 15:15:48 +0100 (CET)
Message-ID: <be5c96da-4566-1422-e5ed-91231278ea14@slint.fr>
Date: Mon, 22 Nov 2021 17:16:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
In-Reply-To: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AMGGWUD023905
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCnlvdXR1YmUtZGwgaXMgaW5jbHVkZWQgaW4gU2xpbnQuClRvIGtub3cgbW9y
ZSB0eXBlOgp5b3V0dWJlLWRsIC0taGVscAptYW4geW91dHViZS1kbAoKeW91dHViZS1kbCBpcyBz
b21laG93IHN1cGVyc2VkZWQgYnkgeXQtZGxwIHRoYXQgSSB3aWxsIHBhY2thZ2UgZm9yIFNsaW50
LgoKQ2hlZXJzLApEaWRpZXIKCgpMZSAyMi8xMS8yMDIxIMOgIDE2OjUwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8gZnJpZW5kcywKPiAKPiBJ
IGFtIHdvbmRlcmluZyBpZiB0aGVyZSBhcmUgZ29vZCBhcHBsaWNhdGlvbnMgZm9yIGRvd25sb2Fk
aW5nIGZyb20gCj4geW91dHViZSB0aGF0IHdvcmtzIHdlbGwgd2l0aCBsaW51eCEgSSBhbSBsb29r
aW5nIGZvciBzb21ldGhpbmcgc2ltaWxhciAKPiB0byBQb250ZSdzIG1lZGlhIGRvd25sb2FkZXIg
d2hpY2ggd29ya3Mgd2VsbCB3aXRoIHdpbmRvd3Mgc2NyZWVuIAo+IHJlYWRlcnMuIElzIHRoZXJl
IHN1Y2ggYW4gYXBwPwo+IAo+IFRoZSBzZWNvbmQgYXBwbGljYXRpb24gSSBhbSBob3BpbmcgdG8g
ZmluZCBpcyBhIGdvb2Qgd2VhdGhlciBhcHAuIEkgCj4gdHJpZWQgdG8gdGhlIHdlYXRoZXIgb24g
dGhlIHRlcm1pbmFsIGFuZCBkaWQgbm90IGxpa2UgaXQgYXQgYWxsLiBTbywgSSAKPiBhbSBob3Bp
bmcgdG8gZmluZCBhIGJldHRlciBhbHRlcm5hdGl2ZSB0aGF0IHdvcmtzIG9uIHRoZSBndWkuCj4g
Cj4gQ2hlZXJzLAo+IAo+IElicmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

