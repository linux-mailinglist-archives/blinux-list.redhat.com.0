Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0ACED326F9F
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 00:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614469227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4rMvXR2rOfKPIX0dEnqHRxzGxyXIdXLa+zONi6md4lo=;
	b=AB6LunkCE5KstUq025DzNoRLI4PIT3E9cxGub0EcAbiR46D4qSz+eksdXl8v7YWn/J3Af9
	ofsGjJP1KWCmbvp5gmC2FH74iMdU/OG9bvPQj9bdk2eK9NvT0Tp5FhIaUPlzYELnzknHFk
	E0gCyUkWwIl7GucUXFqwfDG7txXvtF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-YQCPxX6eN7KCQoLRibu6xQ-1; Sat, 27 Feb 2021 18:40:24 -0500
X-MC-Unique: YQCPxX6eN7KCQoLRibu6xQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA6261868408;
	Sat, 27 Feb 2021 23:40:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 57E0777BF2;
	Sat, 27 Feb 2021 23:40:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D6F5918095C9;
	Sat, 27 Feb 2021 23:40:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RNe8eW025788 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 18:40:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0B73363F8E; Sat, 27 Feb 2021 23:40:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05FAA63F8F
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:40:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CE6E800883
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:40:05 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-494-sh28uBvcOaSNzgt5S-WRAQ-1;
	Sat, 27 Feb 2021 18:40:03 -0500
X-MC-Unique: sh28uBvcOaSNzgt5S-WRAQ-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 79DC9BE49B
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:38:50 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
Message-ID: <02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
Date: Sun, 28 Feb 2021 00:39:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11RNe8eW025788
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

V2h5IG5vdCB1c2Ugd29ybWhvbGUsIGlmIGluc3RhbGxlZCBvbiBib3RoIGVuZHM/CkRpZGllcgoK
TGUgMjgvMDIvMjAyMSDDoCAwMDoyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IFdlbGwsIFNMLWFuZC1PdGhlcnMsIHR1cm5zIG91dCB0aGUgY29tcHJl
c3NlZCBmaWxlIGlzIDEuNUdCLiBJIHdvdWxkIGJlIAo+IGhhcHB5IHRvIHVwbG9hZCB0byBhbiBm
dHAgb3Igc29tZXdoZXJlLCBhcyBJIGFtIG1vc3QgY29tZm9ydGFibGUgd2l0aCBhbiAKPiBuY2Z0
cCBpbnRlcmZhY2UuIFRoYW5rcyBzbyBtdWNoIGluIGFkdmFuY2UKPiBDaGltZQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

