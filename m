Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7D4752F7007
	for <lists+blinux-list@lfdr.de>; Fri, 15 Jan 2021 02:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610674588;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MkAt5urG1biaLjdPH9j8d86qWANuP52K2ZkT3bWfhyo=;
	b=evwSh6Z19/uvB5jB9fY/WNa39YYSpMaVTZCyBfW6rYhn7JsPTGIPKKKjDtMltzUbp6hff3
	rmhmGpE/8RxKypz6UO7C88/4VVOlH4TLO0JQFA6CE5ic7RB7Kc8MNTMTwh2h6wtnBPdNzb
	GeqI2X6pNpVwfUx2KDNi3Xtu+NCZ0Y4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-TbM_xj6LMQChtamHPPxSDg-1; Thu, 14 Jan 2021 20:36:26 -0500
X-MC-Unique: TbM_xj6LMQChtamHPPxSDg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7DBE180A095;
	Fri, 15 Jan 2021 01:36:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE3C75D6AB;
	Fri, 15 Jan 2021 01:36:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8E95180954D;
	Fri, 15 Jan 2021 01:36:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10F1a2FG027435 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Jan 2021 20:36:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 45ECAEB345; Fri, 15 Jan 2021 01:36:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40115EAF98
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 01:36:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E266811E76
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 01:36:00 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-kpYM7NY5NIqiL1wrGrmw7A-1; Thu, 14 Jan 2021 20:35:56 -0500
X-MC-Unique: kpYM7NY5NIqiL1wrGrmw7A-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.4] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id A65055E1F2
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 01:26:40 +0000 (UTC)
Subject: How do I get the Still version of LibreOffice? Or any other word
	processor that works with Orca?
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161067400047.6.9583852999945298773.3065711@slmail.me>
Date: Fri, 15 Jan 2021 01:26:40 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3065711
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkNvdWxkIHNvbWVvbmUgdGVsbCBtZSBob3cgdG8gZ2V0IHRoZSBTdGlsbCB2ZXJzaW9uIG9m
IExpYnJlT2ZmaWNlPwpTb21lb25lIG9uIHRoZSBsaXN0IHNhaWQgdGhhdCB0aGUgU3RpbGwgdmVy
c2lvbiBvZiBMaWJyZU9mZmljZSBkb2VzIG5vdCBoYXZlIHRoZSBidWcgd2hlcmUgT3JjYSByYW5k
b21seSBza2lwcyBwYWdlcyB3aGlsZSByZWFkaW5nIHdpdGggc2F5IGFsbC4gSSd2ZSBiZWVuIGxv
b2tpbmcgZm9yIHRoYXQgU3RpbGwgdmVyc2lvbiBpbnN0ZWFkIG9mIHRoZSBGcmVzaCB2ZXJzaW9u
LCBidXQgYWxsIEkgc2VlIGlzIG51bWJlcmVkIHZlcnNpb25zIGxpa2UgNiBvciA3IGV0Yy4KQ291
bGQgYW55b25lIHRlbGwgbWUgd2hpY2ggdmVyc2lvbiBpcyB0aGUgU3RpbGwgb25lIGFuZCBob3Bl
ZnVsbHkgYSBjb21tYW5kIHRvIGluc3RhbGwgaXQgZnJvbSB0aGUgdGVybWluYWw/Ck9yIGFueSBz
dWdnZXN0aW9ucyBmb3Igd29yZCBwcm9jZXNzb3JzIHdoZXJlIEkgY2FuIHJlYWQgZG9jdW1lbnRz
IHdpdGhvdXQgT3JjYSBza2lwcGluZyBhbGwgb3ZlciB0aGUgcGxhY2U/IEkgZG9uJ3QgbmVlZCB0
aGUgbGF0ZXN0IGZlYXR1cmVzIGNvbXBhcmFibGUgdG8gTVMgT2ZmaWNlLiBJIGp1c3Qgd2FudCBh
IHdvcmQgcHJvY2Vzc29yIHdoZXJlIEkgY2FuIHJlYWQgZG9jdW1lbnRzIHdpdGhvdXQgT3JjYSBq
dW1waW5nIGFyb3VuZCwgYW5kwqAgc29tZXRoaW5nIHRoYXQgSSBjYW4gc2F2ZSBmaWxlcyBhcyAu
cnRmClRoYW5rcywKU0wKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

