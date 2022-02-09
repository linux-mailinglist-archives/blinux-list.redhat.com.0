Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE584AE662
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 02:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644371833;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Sz3JYGIvQqCv4Z2QJIdhT7J4g+gpQOCXst+3kHik7Q=;
	b=StEL4Zko68RgMus392Q3PBwSU3TQwCDnGEciWFUue3+WONcsYtMCkMMmHCFZsQWHfMnrpw
	onCH6MxoYjUOOv08XmAdUaUIo/JtZVvQALzr44cIb3bddyIgHxMeNae1BdOe2ukMzdL8Zo
	Bv0vjnhMIJdIjZvbx4p0/33OJ6+dOUo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-rgc8adPrP-Cw3XM873u_XQ-1; Tue, 08 Feb 2022 20:57:09 -0500
X-MC-Unique: rgc8adPrP-Cw3XM873u_XQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E98F646860;
	Wed,  9 Feb 2022 01:57:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A767F4BC5E;
	Wed,  9 Feb 2022 01:57:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5FE2E4BB7C;
	Wed,  9 Feb 2022 01:57:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2191v2k2015125 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 20:57:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D975D40CFD13; Wed,  9 Feb 2022 01:57:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D380940CFD12
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:57:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB00385A5BE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:57:02 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[69.89.27.88]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-442--wGa699AOc-imVXPzC9rXQ-1; Tue, 08 Feb 2022 20:57:01 -0500
X-MC-Unique: -wGa699AOc-imVXPzC9rXQ-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id 820C62009E4CB
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 19:35:45 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HbtZnse8Hv5IUHbtZnIO8T; Tue, 08 Feb 2022 19:35:45 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:46865 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nHbtZ-003A0W-8N
	for blinux-list@redhat.com; Tue, 08 Feb 2022 19:35:45 -0600
Date: Tue, 8 Feb 2022 19:35:44 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <20220208193544.19898f78@bigbox.attlocal.net>
In-Reply-To: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nHbtZ-003A0W-8N
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:46865
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 2191v2k2015125
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBJIGRvIGtub3cgdGhhdCBzb21lIGJyb3dzZXJzIGhhdmUgYWRkLW9ucyB5b3Ug
Y2FuIGluc3RhbGwKbGlrZSB2aW1pdW0gb3IgdHJpZGFjdHlsIGZvciBGaXJlZm94IHRoYXQgcHJv
dmlkZSB2aS1saWtlCmtleWJpbmRpbmdzLgoKSG93ZXZlciwgSSdtIHVuYXdhcmUgb2YgYW55IHN5
c3RlbS13aWRlIHNvbHV0aW9uIGFuZCBzdXNwZWN0IGl0IHdvdWxkCmJlIGEgYml0IHRlZGlvdXMu
ICBJJ2QgYXZvaWQgdXNpbmcgY29udHJvbCwgc2hpZnQsIG9yIGFsdCBpbiBhbnkKcGVybXV0YXRp
b24gd2l0aCBhIGxldHRlciB0byBnZXQgdGhlIGFycm93LWtleXMgYmVjYXVzZSBsb3RzIG9mCmFw
cGxpY2F0aW9ucyB1c2UgYWx0K2xldHRlciwgY29udHJvbCtsZXR0ZXIsIHNoaWZ0K2xldHRlciwg
b3IKY29udHJvbCtzaGlmdCtsZXR0ZXIvYWx0K3NoaWZ0K2xldHRlci9jb250cm9sK2FsdCtsZXR0
ZXIuICBTbyBpZiBJCmhhZCB0aGUgZGVzaXJlIHRvIHRyeSB0aGlzLCBJJ2Qgc3VnZ2VzdCB1c2lu
ZyB5b3VyIE1vZDQgKGFsc28ga25vd24KYXMgdGhlIFdpbmRvd3MgTG9nbyBrZXksIHRoZSBTdXBl
ciBrZXksIGV0Yykgc2luY2UgbW9zdCBhcHBsaWNhdGlvbnMKZG9uJ3QgdXNlIHRoaXMga2V5LiAg
SnVzdCBhYm91dCBhbGwgb2YgbXkgd2luZG93LW1hbmFnZXIga2V5LWJpbmRpbmdzCmFyZSB0aWVk
IHRvIHRoaXMgbW9kaWZpZXIga2V5LgoKSSBkb24ndCBrbm93IGlmIHlvdSdyZSBpbiBwdXJlIGNv
bnNvbGUgb3IgaWYgeW91J3JlIHVzaW5nIFguICBJdAptaWdodCBiZSBhIGJpdCBtb3JlIGRpZmZp
Y3VsdCBpbiB0aGUgcHVyZSBjb25zb2xlLCBzbyBJJ2QKaW52ZXN0aWdhdGluZyBob3cgdG8gY3Jl
YXRlIGEga2V5Ym9hcmQgbWFwIHRoYXQgY29udmVydHMgdGhpbmdzIGxpa2UKTW9kNCtoIHRvIGJl
IHRoZSBsZWZ0IGFycm93LCBNb2Q0K2wgdG8gYmUgdGhlIHJpZ2h0IGFycm93LCBldGMuCkhvd2V2
ZXIsIHRoaXMgaXMgc29tZXdoYXQgc3lzdGVtLWRlcGVuZGVudC4gIEl0IGxvb2tzIGxpa2UgdGhl
cmUncwpzb21lIGd1aWRhbmNlIGhlcmUKCmh0dHBzOi8vd2lraS5hcmNobGludXgub3JnL3RpdGxl
L0xpbnV4X2NvbnNvbGUvS2V5Ym9hcmRfY29uZmlndXJhdGlvbgoKcGFydGljdWxhcmx5IGluIHRo
ZSAiQ3JlYXRpbmcgYSBjdXN0b20ga2V5bWFwIiBzZWN0aW9uLgoKSWYgeW91J3JlIGRvaW5nIGl0
IGluIFgsIHRoZSBzYW1lIGtleW1hcCBpZGVhIG1pZ2h0IGFsc28gd29yaywgYnV0CnlvdXIgd2lu
ZG93LW1hbmFnZXIgbWlnaHQgYWxsb3cgeW91IHRvIGRvIGEgY291cGxlIG9uZS1vZmYga2V5cwp3
aXRob3V0IG1lc3Npbmcgd2l0aCBrZXlib2FyZCBtYXBzLCBpc3N1aW5nIGEgY29tbWFuZCBsaWtl
IG1hcHBpbmcKTW9kNCtoIHRvIGV4ZWN1dGUKCiAgeGRvdG9vbCBrZXkgLS1jbGVhcm1vZGlmaWVy
cyBMZWZ0CgpJdCBnZXRzIGEgbGl0dGxlIHRyaWNreSBpZiB5b3Ugd2FudCB0byBkbyBjb250cm9s
K2xlZnQgb3Igc2hpZnQrbGVmdApzbyB5b3UnZCBoYXZlIHRvIGhhbmRsZSBlYWNoIGluZGl2aWR1
YWxseS4KCkhvcGUgdGhpcyBnaXZlcyB5b3Ugc29tZSBpZGVhcywKCi1UaW0KCk9uIEZlYnJ1YXJ5
ICA4LCAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ICDC
oMKgwqAgU28sIHRoaXMgaXMgc29tZXRoaW5nIEknbSB3b25kZXJpbmcuCj4gCj4gR2l2ZW4gSSdt
IG9uIG15IGxhcHRvcCBjdXJyZW50bHksIEknbSB3b25kZXJpbmcgaG93IGVhc3kgaXQnZCBiZSB0
byAKPiBzaGlmdCB0aGUgYXJyb3cga2V5cyBmdW5jdGlvbiB0bywgc2F5LCBjb250cm9sK3NoaWZ0
IGFuZCBtYXliZSB0aGUKPiB2aW0ga2V5IGJpbmRpbmdzIHNvIEkgZG9uJ3QgaGF2ZSB0byB0YWtl
IG15IGhhbmRzIGVudGlyZWx5IG9mIHRoZQo+IGtleWJvYXJkIHRvIGRvIHRoaW5ncyB0aGF0IHRo
ZSBhcnJvdyBrZXlzIGRvLCBsaWtlIG5lYXZpZ2F0aW5nIGEKPiB3ZWIgcGFnZSwgc2VsZWN0aW5n
IHRleHQsIGFuZCBzbyBvbj8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

