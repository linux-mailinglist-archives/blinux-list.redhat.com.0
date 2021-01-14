Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3C212F55AB
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 01:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610585487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5hQ9sROlIlpCZZ3bCYCJdNC+ItCG/jKGcWuE/JROTNI=;
	b=WsAH0+PmMaIYPqEgrZGHXuHIfdxF3kZnmehxy0Ea/MmnRw0Mqf/41te5yCt8BBYvkpCIkF
	LdPqhlHhYqx5zvYypqnWFMLr4vInyFWUH6FQXyZio3pLQFiJnPRVx7MzimC0t/+dua1yLn
	KbT3K7jAIiJgtgXiPbyQpCowk20Kdi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-O5b51-BlPvqTNUbtXKejsQ-1; Wed, 13 Jan 2021 19:51:24 -0500
X-MC-Unique: O5b51-BlPvqTNUbtXKejsQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8308615725;
	Thu, 14 Jan 2021 00:51:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E2A46F959;
	Thu, 14 Jan 2021 00:51:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE020180954D;
	Thu, 14 Jan 2021 00:51:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10E0p1Ie012512 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 19:51:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 765182166B2C; Thu, 14 Jan 2021 00:51:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 713102166B2A
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 00:50:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79708811E76
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 00:50:59 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-373-3UkeVI1DPduX7Zbr_xvZEw-1; Wed, 13 Jan 2021 19:50:56 -0500
X-MC-Unique: 3UkeVI1DPduX7Zbr_xvZEw-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.9] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id CD90B5E18D
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 00:43:31 +0000 (UTC)
Subject: How to activate a "clickable" icon?
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161058501163.6.3631318214282253314.3039996@slmail.me>
Date: Thu, 14 Jan 2021 00:43:31 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3039996
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

SGksCldoaWxlIG9ubGluZSBJIHdhcyBvbiBhIHNpdGUgdGhhdCBoYXMgbGlrZSBhIGZpbHRlciB5
b3VyIG9wdGlvbnMgc2VnbWVudC4gSXQgaXMgYSBjbGlja2FibGUgaWNvbiB0aGF0IHNheXMgImZp
bHRlciwgY2xpY2thYmxlIi4gCkl0IGlzIG5vdCBhIGxpbmssIGFuZCBub3QgYSBidXR0b24uIEl0
IGlzIHNpbXBseSBhIGNsaWNrYWJsZSBpY29uIHRoYXQgc2F5cyAiZmlsdGVyLCBjbGlja2FibGUi
LgpPbiBXaW5kb3dzIHdpdGggTlZEQSwgSSBjYW4gcHJlc3MgZW50ZXIgb24gdGhlIGNsaWNrYWJs
ZSBpY29uwqAgYW5kIGl0IHdpbGwgb3BlbiB1cCB0aGUgY2hvaWNlcy4KQnV0IG9uIExpbnV4IE1p
bnQgTUFURSB3aXRoIE9yY2EsIHdoZW4gSSBwcmVzcyBlbnRlciBvciBzcGFjZSBvbiB0aGUgImNs
aWNrYWJsZSIgaWNvbiwgaXQgZG9lcyBub3RoaW5nLgpEbyB5b3UgZ3V5cyBrbm93IGlmIHRoZXJl
IGlzIGEgc3BlY2lhbCBrZXkgY29tYmluYXRpb24gdG8gYWN0aXZhdGUgImNsaWNrYWJsZSIgcmVn
aW9ucyB0aGF0IGFyZSBub3QgbGlua3MsIG5vdCBidXR0b25zLCBqdXN0IGNsaWNrYWJsZSBpY29u
cz8KVGhhbmtzLApTTApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

