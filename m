Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 867F14BB712
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 11:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645180894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=th8H6nMGLK64w1ZHVU0oyInswd9gFmF1GKic7MobJKI=;
	b=UPeFZ6La9l2WQjj4MJbhgYpxl5aZhVReE8jPcu4uEYfSeVLCp1sMY5gP3Iyj8015ucnw5y
	Ua8Sr6h79dzjQ7zEIFEBOdpnoM+faaqHCqgyrquCNm48QdGuoA1kwlJqV9YtkaWHd3hkt0
	8ghHaS5iz9BTOOY3ZEfn17wjkfbnvTg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-JTjXnbo_MhSiN_V316aNHQ-1; Fri, 18 Feb 2022 05:41:31 -0500
X-MC-Unique: JTjXnbo_MhSiN_V316aNHQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 206A518460E6;
	Fri, 18 Feb 2022 10:41:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6C4F1064141;
	Fri, 18 Feb 2022 10:41:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 297381809CAA;
	Fri, 18 Feb 2022 10:41:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IAfHYA026688 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 05:41:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F1FAD2024CCF; Fri, 18 Feb 2022 10:41:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED6DE2024CCE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:41:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80BE12B699E0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:41:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-275-A4N8M47_PMu4T8EYjRaAqw-1;
	Fri, 18 Feb 2022 05:41:09 -0500
X-MC-Unique: A4N8M47_PMu4T8EYjRaAqw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9EF042061A
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:40:54 +0100 (CET)
Message-ID: <9aff1288-b3de-f927-a3c1-ac1f9a18fa46@slint.fr>
Date: Fri, 18 Feb 2022 11:40:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: debuan getting web suppression
To: blinux-list@redhat.com
References: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
In-Reply-To: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IAfHYA026688
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgYXJlIGRlYmlhbiBhbmQgZGV2dWFuIChkZWJpYW4gd2l0aG91dCBzeXN0ZW1kKSwgYnV0
IG5vIGRlYnVhbi4KCkRpZGllcgoKTGUgMTgvMDIvMjAyMiDDoCAxMToxOCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEZvciBub3cgYW5kIEkgZG9uJ3Qg
a25vdyBob3cgZmFyIGJhY2ssIGRlYnVhbiBoYXMgYmVlbiBnZXR0aW5nIHdlYgo+IHN1cHByZXNz
aW9uLiAgVGhpcyBjYW4gYmUgY2FsbGVkIHdlYiBzdXBwcmVzc2lvbiBzaW5jZSBwb3B1bGFyaXR5
IGlzIG5vdAo+IHRoZSBvbmx5IHdheSB0byBoYXZlIHRoaW5ncyBtb3ZlZCB1cCBpbiB3ZWIgcmFu
a2luZ3MuICBUaGlzIGFsc28gaGFwcGVucwo+IGJ5IG1lYW5zIG9mIG1hbmlwdWxhdGlvbiBvZiBr
ZXl3b3JkcyBhbW9uZyBvdGhlciBzdHJhdGVnaWVzLiAgSSBkb24ndCBrbm93Cj4gaWYgZGVidWFu
IGdvdCBraWxsZWQgb2ZmIGJ5IHRoZSBwYW5kZW1pYyBpbiBhZGRpdGlvbiB0byB3ZWIgc3VwcHJl
c3Npb24KPiBidXQgdGhpcyBpcyB3aGF0IGhhcyBoYXBwZW5lZC4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

