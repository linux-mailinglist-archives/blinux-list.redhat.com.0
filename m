Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DBAEB3D26A9
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 17:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626967870;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eXaLFxbjG5PEM1Blyx6/ZqWVg8Jj7vvB9fbp3VnzsF0=;
	b=FhMT6Xbio4jg8r1buzfKGMStEP3d/WLX/zFGpyB5de7Hv5lVEFT4bq2MZjcH4DY0hgOdoN
	ncjVvVtKnNu8ZOZ+xC3qRSGewyzNLEomuRzoRsFgloRQ/P21MbMDdyBgN01giW56Z2Azhr
	R0vWqqXha4qbuxP9UV1TSXh1ysOGbZc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-e5SCHQC2MEOWp--KjdWnmg-1; Thu, 22 Jul 2021 11:31:07 -0400
X-MC-Unique: e5SCHQC2MEOWp--KjdWnmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 579A0CC623;
	Thu, 22 Jul 2021 15:31:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C5375D9C6;
	Thu, 22 Jul 2021 15:31:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D020D4BB7C;
	Thu, 22 Jul 2021 15:31:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MFUxit022959 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 11:30:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 83F2E107504; Thu, 22 Jul 2021 15:30:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E6A4107528
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:30:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68FFE18A01AB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:30:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-15-O-Y9c65FNHKmm5BqVsX0lw-1;
	Thu, 22 Jul 2021 11:30:45 -0400
X-MC-Unique: O-Y9c65FNHKmm5BqVsX0lw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 211B9A3EC2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:30:43 +0200 (CEST)
Subject: Re: archinstall and espeak-ng
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2107212115390.1346@panix1.panix.com>
	<20210722140602.m3jk7hjrw74gix65@alex-pc>
Message-ID: <e78d6b25-7a86-06d3-b930-27bac68e17dd@slint.fr>
Date: Thu, 22 Jul 2021 17:30:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210722140602.m3jk7hjrw74gix65@alex-pc>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MFUxit022959
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TGUgMjIvMDcvMjAyMSDDoCAxNjowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IGlmIHlvdSBkb24ndCB3YW50IHRvIHVzZSBndWksIHlvdSBkb24ndCBu
ZWVkIHNwZWVjaC1kaXNwYXRjaGVyLgoKVW5sZXNzIHlvdSB3YW50IHRvIHVzZSB0aGUgc3BlZWNo
ZC11cCBhcyBjb25zb2xlIHNjcmVlbiByZWFkZXIuLi4KQXMgc29vbiBhcyBzb21lb25lIHdpbGwg
aGF2ZSBwYWNrYWdlZCBpdCBmb3IgQXJjaCA7KQoKTm90IGEgZGF1bnRpbmcgdGFzazoKaHR0cDov
L3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL3NvdXJjZS9zcGVlY2hkLXVw
L1NMS0JVSUxECgpDaGVlcnMsCkRpZGllcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

