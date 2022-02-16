Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E2C4B8CD2
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 16:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645026475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Omn3JXf65ZjoFz/QDO2xgX59um84odVm9E/KoiRO2w=;
	b=P2OrnD3R5QDbL57uTJ2U8mdQ93nqJvmzjYIVSqFx/48mZhkyccJGAGD39m6APD/QmVMSAA
	f5HmnlWUKBk17RwWEZud6uGVpH0u2BrrgwfgNA+K6kJrEJ2qXRGSqsowpQrihe2j4Dgs3e
	h5WaaQ1DxLvkptgnd1PROqXMWuqun98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-355-_m6ZQGolORSZdHJVr4HxAQ-1; Wed, 16 Feb 2022 10:47:53 -0500
X-MC-Unique: _m6ZQGolORSZdHJVr4HxAQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC33F1091DA1;
	Wed, 16 Feb 2022 15:47:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDCE4752D1;
	Wed, 16 Feb 2022 15:47:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 802174BB7C;
	Wed, 16 Feb 2022 15:47:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GFlgYW022607 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 10:47:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 383CAC1914B; Wed, 16 Feb 2022 15:47:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 342F0C07F3F
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 15:47:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F836811E78
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 15:47:42 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-131-jv6cFkz-NB2jkKNJWSvQwg-1; Wed, 16 Feb 2022 10:47:40 -0500
X-MC-Unique: jv6cFkz-NB2jkKNJWSvQwg-1
X-IronPort-AV: E=Sophos;i="5.88,374,1635199200"; 
   d="scan'208";a="6111429"
Received: from nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr (HELO begin)
	([194.199.1.52]) by mail3-relais-sop.national.inria.fr with
	ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 16:47:39 +0100
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1nKMWn-003kKr-JN
	for blinux-list@redhat.com; Wed, 16 Feb 2022 16:47:37 +0100
Date: Wed, 16 Feb 2022 16:47:37 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
Message-ID: <20220216154737.eser6w722epjkdfh@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
MIME-Version: 1.0
In-Reply-To: <35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBOb3Qgc3VyZcKgIHdo
YXQncyBzbyAibm9uLW9mZmljaWFsIiBhYm91dCB0aGVtLCBzaW5jZSB0aGV5J3JlIHBhY2thZ2Vk
Cj4gYnkgdGhlIERlYmlhbiBpc28gdGVhbS4KClRoZXkgYXJlIG5vbi1vZmZpY2lhbCBhcyBpczog
bm9uLWZyZWUgaXMgbm90IHBhcnQgb2YgRGViaWFuLgoKVGhhdCdzIHRoZSB1bmVhc3kgbWlkZGxl
LWdyb3VuZCB0aGF0IERlYmlhbiB1c2VzIGJldHdlZW4gdGhlIEdOVQphcHByb2FjaCB3aGljaCBp
cyB0byBiYW4gZmlybXdhcmVzIGVudGlyZWx5ICh0byB0aGUgcG9pbnQgb2YgcmVmdXNpbmcKdG8g
c2F5IHRoYXQgdGhleSBleGlzdCksIGFuZCBpbnN0YWxsaW5nIG5vbi1mcmVlIGZpcm13YXJlIGJ5
IGRlZmF1bHQKd2l0aG91dCB0aGUgdXNlciBiZWluZyBhd2FyZSBhdCBhbGwgdGhhdCBub24tZnJl
ZSBmaXJtd2FyZSBhcmUgYSBjb25jZXJuCmZvciBvdXIgZnJlZWRvbS4KClNhbXVlbAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

