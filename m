Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 204223633FB
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 08:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618726387;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0LxnSOvO5Kse5M2Dk34GLVV3Q/sI9kNkBclN/y5l1oU=;
	b=Ci7Mema4Z6zs55ejFu4AYCeGfy4Rtjo9bhCQogC5BfF4FzEBC3ivqt1TmfnQDCCK5QjnUm
	1xXWxsyq03Zbx4oMme0L4V3DIZekHcMVC/rgfxwkvfG+jVJVQdIiRa4GNtEUph/eMq3Gcc
	jOq6XUK38CC30Lq72KW78FSnCkV9+Fg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-443-sBjZIuVXPMWsyjZmIPedUA-1; Sun, 18 Apr 2021 02:13:04 -0400
X-MC-Unique: sBjZIuVXPMWsyjZmIPedUA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A45A910053E6;
	Sun, 18 Apr 2021 06:13:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71BEB5D9C0;
	Sun, 18 Apr 2021 06:13:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B37F64ED7A;
	Sun, 18 Apr 2021 06:12:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I6BT4B028157 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 02:11:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 76161345AC; Sun, 18 Apr 2021 06:11:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 704D1345AA
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:11:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2E31101A52C
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:11:26 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-55-AwRFGBuGPm2EsUfeBBQDrA-1; Sun, 18 Apr 2021 02:11:22 -0400
X-MC-Unique: AwRFGBuGPm2EsUfeBBQDrA-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.8] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 6FF095EEE8
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:04:11 +0000 (UTC)
In-Reply-To: <161871140597.7.16626318188140760724.5971076@simplelogin.co>
References: <161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
	<161862814448.7.6659849185338098597.5940568@simplelogin.co>
	<161863093723.7.7991468665084930791.5941189@slmail.me>
	<PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<Pine.LNX.4.64.2104171340500.2504722@server2.shellworld.net>
	<PH0PR14MB4296CF10E5C271F1BA6B10C3C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<CAO2sX30YXDpUgbUXuA-r9UjBhkJz=JEDbV+gaRbCXO5tKKdrEg@mail.gmail.com>
	<161871140597.7.16626318188140760724.5971076@simplelogin.co>
Subject: RE: SL's response to all inquiries re: Readspeaker voices
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161872585125.7.16930412196503342562.5973654@slmail.me>
Date: Sun, 18 Apr 2021 06:04:11 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5973654
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0b3BoZXIsCk15IG9yaWdpbmFsIG1lc3NhZ2Ugd2FzIGluIHJlc3BvbnNlIHRvIEth
cmUgYXMgd2UgaGFkIGJlZW4gZGlzY3Vzc2luZyB2YXJpb3VzIHBvc3NpYmxlIHNvbHV0aW9ucyBm
b3IgdGhlIGlzc3VlIEkgd2FzIGhhdmluZyB3aXRoIGZvcm1hdHRpbmcgbXkgcG9zdHMgdG8gdGhl
IGxpc3QuCldoYXQgSSBtZWFuIGJ5IG5vdCBzZWVpbmcgdGhlIHBvaW50IGZvciBoYXZpbmcgYW4g
ZW1haWwgY2xpZW50IGlzLCBkb2Vzbid0IGl0IHNlcnZlIG1vcmUgb3IgbGVzcyB0aGUgc2FtZSBn
ZW5lcmFsIHB1cnBvc2UgYXMgYSBtYWlsIHdlYiBpbnRlcmZhY2U/IE90aGVyIHRoYW4gaXQgbWF5
IGhhdmUgbW9yZSBvcHRpb25zIGZvciBwZXJzb25hbCBjdXN0b21pemF0aW9uLCBhbmQgeW91IGRv
bid0IGhhdmUgdG8gc3BlbmQgdGhlIHRpbWUgbG9hZGluZyBhIHdlYnNpdGUgYW5kIGxvZ2dpbmcg
aW4uIFNvIEkgY2FuIHNlZSB0aGUgYXBwZWFsIHRoZXJlLsKgIEl0cyBqdXN0IHRoYXQgSSB1c3Vh
bGx5IGFjY2VzcyBlbWFpbCB0aHJvdWdoIG15IHByb3ZpZGVyJ3Mgd2ViIGludGVyZmFjZSwgc28g
SSBoYXZuJ3QgwqBsb29rZWQgaW50byBtYWlsIGNsaWVudHMuIApJIG5hdmlnYXRlIHdpdGggc2lt
aWxhciBzaG9ydCBrZXlzIGFzIG90aGVyIHdlYiBhcHBsaWNhdGlvbnMsICJCIiB0byBqdW1wIHRv
IHZhcmlvdXMgYnV0dG9ucyBvbiB0aGUgcGFnZSBldGMuCkEgbWFpbCBjbGllbnQgbWF5IGFjdHVh
bGx5IGJlIG1vcmUgZWZmaWNpZW50LiBJdHMganVzdCB0aGF0IEkgaGF2bid0IGZlbHQgdGhlIG5l
ZWQgdG8gbG9vayBpbnRvIGl0IGJlY2F1c2Ugc28gZmFyLCB0aGUgd2ViIGludGVyZmFjZSBoYXMg
d29ya2VkIGp1c3QgZmluZSBmb3IgbWUuIEkgc3VwcG9zZSB0aGUgdXAgc2lkZXMgdG8gaGF2aW5n
IGEgbWFpbCBjbGllbnQgaXMgaGF2aW5nIHRoZSBiZW5lZml0IG9mIGFsbCB5b3VyIGVtYWlsIGFj
Y291bnRzIHN0cmVhbWVkIGludG8gb25lIGNlbnRyYWwgcGxhY2UsIGFuZCBtYXliZSB0aGVyZSBh
cmUgbW9yZSBhY2Nlc3NpYmxlIHNob3J0IGtleXMuIApBbnl3YXlzLCBJJ2xsIGNoZWNrIG91dCBt
YWlsIGNsaWVudHMgaW4gdGVybXMgb2Ygc2ltcGxlciBtZXRob2RzIGZvciBmb3JtYXR0aW5nIHRl
eHQgdGhhdCBJIHNlbmQsIGFuZCBpZiBpdCBtYXkgbWFrZSBuYXZpZ2F0aW5nIGFsbCB0aGUgbWVz
c2FnZXMgZnJvbSBtYWlsaW5nbGlzdHMgZWFzaWVyLgrCoFRoYW5rcywKU0wKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

