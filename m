Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5183D331C53
	for <lists+blinux-list@lfdr.de>; Tue,  9 Mar 2021 02:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615253809;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vTzTiwao8YJJrAm7YUKR5wh1tGKrkwI9+sqVKE0ZrT4=;
	b=AhC3Nlo3g4WscYOBkPNwxdSc2T1WT25eyt1M+DQYDdxeqALDhrkqK3LsKNhbyfp2iEgsri
	vqrUSPWDqHibD8dJdlWD1+YiTFBoCmG+4fVTdsA774SpYIBtGEtHo7lR/blX4DHVG6m06B
	9MVsqM2btHz7xDV0asmEKIK4XcT9s5E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-XOf10wPLM1Ce4LjR99xkBw-1; Mon, 08 Mar 2021 20:36:47 -0500
X-MC-Unique: XOf10wPLM1Ce4LjR99xkBw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE9021966321;
	Tue,  9 Mar 2021 01:36:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68E4A5D6D7;
	Tue,  9 Mar 2021 01:36:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 58EB218095C9;
	Tue,  9 Mar 2021 01:36:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1291aFFb008592 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Mar 2021 20:36:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7CD51200E26F; Tue,  9 Mar 2021 01:36:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 777B72026D48
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 01:36:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D97C9800296
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 01:36:12 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-105-3COvTI3nNPW5orjU9_Y_DA-1; Mon, 08 Mar 2021 20:36:09 -0500
X-MC-Unique: 3COvTI3nNPW5orjU9_Y_DA-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.2] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id 053FD5E207
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 01:29:57 +0000 (UTC)
In-Reply-To: <161519072930.7.8996301052494854294.4525552@simplelogin.co>
References: <161517600216.7.8525648975641765810.4519676@slmail.me>
	<161519072930.7.8996301052494854294.4525552@simplelogin.co>
Subject: RE: New laptop, alt F1 is not bringing up the menus
MIME-Version: 1.0
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Cc: "blinux-list@redhat.com" <blinux-list@redhat.com>
Message-ID: <161525339787.8.1577462917556186226.4551859@slmail.me>
Date: Tue, 09 Mar 2021 01:29:57 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4551859
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksClRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb25zLiBZZXMsIGl0IHR1cm5zIG91dCBpdCBo
YWQgdG8gZG8gd2l0aCB0aGUgZnVuY3Rpb24ga2V5LiBGb3Igc29tZSByZWFzb24gSSBuZXZlciBo
YWQgdGhpcyBwcm9ibGVtIHdpdGggbXkgSFAuIEkgaGFkIGEgc2lnaHRlZCBoZWxwZXIgZ28gaW50
byB0aGUgTGVub3ZvIEJpb3MgYW5kIGZpeCB0aGUgaXNzdWUgd2l0aCB0aGUgZnVuY3Rpb24ga2V5
LiBJIHRoaW5rIGl0IHNhaWQgc29tZXRoaW5nIGFib3V0IGVuYWJsaW5nIGhvdGtleXMgb3Igc29t
ZXRoaW5nIGxpa2UgdGhhdC4gQW55d2F5cywgaXQgd29ya2VkLCBub3cgdGhlIGxhcHRvcCBhY2tu
b3dsZWRnZXMgdGhpbmdzIGxpa2UgYWx0IEYxIHRvIGJyaW5nIHVwIHRoZSBtZW51cy7CoApUaGFu
ayB5b3Ugc28gbXVjaCBmb3IgeW91ciB2ZXJ5IGhlbHBmdWwgc3VnZ2VzdGlvbiwgaWYgYWxsIGNv
bnRpbnVlcyB0byBnbyB3ZWxsLCBJIHNob3VsZCBiZSBhYmxlIHRvIGtlZXAgdGhpcyBsYXB0b3Ag
bm93LgpTTApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

