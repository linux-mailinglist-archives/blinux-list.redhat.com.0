Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A44524A687E
	for <lists+blinux-list@lfdr.de>; Wed,  2 Feb 2022 00:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643757964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tFatPtaQaiGudz51Alvg/biiXdotPUOuZ7CO9R/BGnM=;
	b=O7RzfWIXYDWpW/HgrClA1BTnDLXcaJ4v7l3lOHxRbCislmbOC39nhD//nhLJCiawJrbRtB
	1Af/novkEAD8fJ96vy0M5HH4oMixGBUbgcMjZuEh4kzpPMigNICS2ukBzoDWPdus6iEpqN
	mM/ANw591/RTlgyHx2IyLS5zp4X9JX0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-MkKU86sNOuqi38rBEJPDtg-1; Tue, 01 Feb 2022 18:25:21 -0500
X-MC-Unique: MkKU86sNOuqi38rBEJPDtg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B240F814245;
	Tue,  1 Feb 2022 23:25:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D55235DBA1;
	Tue,  1 Feb 2022 23:25:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 174544BB7C;
	Tue,  1 Feb 2022 23:25:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211NOIE2024249 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 18:24:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1A0631121319; Tue,  1 Feb 2022 23:24:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 167131121318
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 23:24:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0161800B24
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 23:24:14 +0000 (UTC)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de
	[80.67.18.14]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-442-FxIElRqBNnSOBeYHAb3pjA-1; Tue, 01 Feb 2022 18:24:13 -0500
X-MC-Unique: FxIElRqBNnSOBeYHAb3pjA-1
Received: from [37.4.229.93] (helo=smtpclient.apple)
	by smtprelay02.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nF2Uu-0000SN-BV
	for blinux-list@redhat.com; Wed, 02 Feb 2022 00:23:40 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: Remaining DecTalk Issues?
Date: Wed, 2 Feb 2022 00:24:07 +0100
Message-Id: <F366FAAA-FE98-4742-89CC-1D16580E53B3@linux-a11y.org>
References: <6015a48-55b2-85e3-3e2e-20dcebfcd2d@hubert-humphrey.com>
In-Reply-To: <6015a48-55b2-85e3-3e2e-20dcebfcd2d@hubert-humphrey.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 211NOIE2024249
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

SG93ZHkgQ2hpbWUsCgpnb29kIHRvIGtub3cuICBJIHdpbGwgUE0geW91IGFib3V0IGEgY2FsbC4g
SSBkbyBub3QgZmluZCB0aW1lLgoKWWVzLCBmZW5yaXIgc3VwcG9ydHMgc3BlZWNoLWRpc3BhdGNo
ZXIuIFZveGluIGlzIGF2YWlsYWJsZSBmb3IgdGhhdC4KCkNoZWVycyBjaHJ5cwoKPiBBbSAwMS4w
Mi4yMDIyIHVtIDE4OjQwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gCj4g77u/SGkgQ2hyaXM6IEkgYW0gaW4gU291
dGhlcm4gQ2FsaWZvcm5pYSwgUGFjaWZpYyBTdGFuZGFyZCB0aW1lLCB3aGVyZSByaWdodCBub3cg
aXQgaXMgOTM3QU0uIEkgdHJ1c3QgRmVucmlyIGFsc28gc3VwcG9ydHMgdGhlIG5ldyBlbWJlZGRl
ZCB2b2ljZXMgaW4gVm94aW4/IEkgdGhpbmsgR2lsbGVzLWFuZC1vdGhlcnMgaGF2ZSBzdWdnZXN0
ZWQgRmVucmlyLiBUaGFua3MgaW4gYWR2YW5jZQo+IENoaW1lCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

