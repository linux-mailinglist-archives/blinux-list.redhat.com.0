Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A32B1BC9B
	for <lists+blinux-list@lfdr.de>; Mon, 13 May 2019 20:06:00 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5830B18DF7A;
	Mon, 13 May 2019 18:05:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11350608AC;
	Mon, 13 May 2019 18:05:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE3AB41F58;
	Mon, 13 May 2019 18:05:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4DI4QE5008638 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 13 May 2019 14:04:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B6E859060; Mon, 13 May 2019 18:04:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B04059CB1
	for <blinux-list@redhat.com>; Mon, 13 May 2019 18:04:24 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.25.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 60C48309B147
	for <blinux-list@redhat.com>; Mon, 13 May 2019 18:04:18 +0000 (UTC)
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id 8AB082013D9B9
	for <blinux-list@redhat.com>; Mon, 13 May 2019 13:04:17 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id QFJBhMvwzzc5jQFJBhJZbs; Mon, 13 May 2019 13:04:17 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=thechases.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j7CZRHqH7/4vGBKCCOLfhcq2XXPOvF/CBuM0BdS66D4=;
	b=cc5KnL9AE4p0ebgH4ZIcPTX+/9
	a+7OaPxipgOndT1Aa7gWUKLYJ7lHuT4Q+qkLJspdAxgtLDHtLyBzOIivMUoojqQc3G00otYAZDIr5
	tn/fBUemMW5OtdI35vopG8tiGl5HeD82qU8qvrxJrahCVFhGyMRY9Aa3T+i2HiwHk61z30LFJ4dTk
	TJR8dY0s3oSIJCw0Oix5STez5ADufk1jJluV9RXJUB8oSMDhF3DB4xEnhkUcCSgTXsXPInvdmKLYQ
	IGmQGFdWuQjUROyzyoDlm/pVQ4VVm4DIZhXPt9QiqWHUjuT3MsPNpz+jVUlUP3kqZezjeTLOfL1AB
	6lDqzFgA==;
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:49044 helo=bigbox.christie.dr)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1hQFJB-003j9r-3w
	for blinux-list@redhat.com; Mon, 13 May 2019 14:04:17 -0400
Date: Mon, 13 May 2019 13:04:15 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: The Sword project.
Message-ID: <20190513130415.2c1324c6@bigbox.christie.dr>
In-Reply-To: <6B091BAF-7CC4-47D3-ACE4-777004374FF9@pipkrokodil.se>
References: <6B091BAF-7CC4-47D3-ACE4-777004374FF9@pipkrokodil.se>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1hQFJB-003j9r-3w
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.christie.dr) [172.0.250.193]:49044
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.49]); Mon, 13 May 2019 18:04:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Mon, 13 May 2019 18:04:20 +0000 (UTC) for IP:'69.89.25.8'
	DOMAIN:'gateway2.unifiedlayer.com' HELO:'gateway2.unifiedlayer.com'
	FROM:'blinux.list@thechases.com' RCPT:''
X-RedHat-Spam-Score: 0.189  (DKIM_INVALID, DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_PASS) 69.89.25.8 gateway2.unifiedlayer.com 69.89.25.8
	gateway2.unifiedlayer.com <blinux.list@thechases.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x4DI4QE5008638
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Mon, 13 May 2019 18:05:58 +0000 (UTC)

VGltIGhlcmUuICBBcyBJIHVuZGVyc3RhbmQgaXQsIHRoZSBTV09SRCBwcm9qZWN0IGhhcyBzZXZl
cmFsCmZyb250LWVuZHMgaW5jbHVkaW5nICJYaXBob3MiIChHbm9tZS1iYXNlZCksICJiaWJsZXRp
bWUiIChLREUtYmFzZWQpLAphbmQgImRpYXRoZWtlIiAoQ0xJLWJhc2VkKS4gIFRob3NlIGZyb250
LWVuZHMgYWNjZXNzIHRoZSBTV09SRApiYWNrLWVuZCBsaWJyYXJ5IHdoaWNoIGluIHR1cm4gYWNj
ZXNzZXMgdGV4dHMsIGRpY3Rpb25hcmllcywgYW5kCmNvbW1lbnRhcmllcy4KCi10aW0KCk9uIE1h
eSAxMywgMjAxOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBI
aSEKPiBJcyBhbnlvbmUgaGVyZSBmYW1pbGlhciB3aXRoIHRoZSBTd29yZCBwcm9qZWN0Pwo+IEFy
ZSB0aGVyZSBwcmUtY29tcGlsZWQgdmVyc2lvbnMgdGhhdCBjYW4gYmUgZG93bmxvYWRlZCBmcm9t
IHRoZQo+IERlYmlhbiByZXBvc2l0b3J5IG9yIHRoZSBVYnVudCBSZXBvPyBJIGtub3cgWGlwaG9z
IGNhbiBiZSBpbnN0YWxsZWQKPiBWaWEgdGhlIHJlcG8gYnV0ICBpc27igJl0IFhpcGhvcyBwYXJ0
IG9mIFN3b3JkIG9yIGlzIFN3b3JkIHBhcnQgb2YKPiBYaXBob3M/IEkgYW0gYSBiaXQgY29uZnVz
ZWQ/IFRoYW5rcyBpbiBhZHZhbmNlLgo+IC9BCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
