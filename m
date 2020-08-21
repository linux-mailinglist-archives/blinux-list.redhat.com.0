Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id A048B24D637
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 15:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598017100;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FqVZtnNPrLYZVrxPqDW+HY1LpVMzZFChepgE+jYSKHw=;
	b=gGb53msc6N6VlrNOXaDhItTV2yAzhLpVRwADIEV7dWFWs3+iekZEAABapq9MaRKyu5MAij
	1KViR7CIkfWa7jDY4WLqWYSETUj3/uyxLub5dJ/s7jk/3loAFUJ6dRet22ZjkHbI8ogzoP
	WbE2eCba6mvh3LlMiXDA8mkDP4m4Dj8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-JwOfiNWCMRqYEddlEuArfQ-1; Fri, 21 Aug 2020 09:38:17 -0400
X-MC-Unique: JwOfiNWCMRqYEddlEuArfQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDEB3100648E;
	Fri, 21 Aug 2020 13:38:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DDE77C58A;
	Fri, 21 Aug 2020 13:38:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07D84662B0;
	Fri, 21 Aug 2020 13:38:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LDcAqt000832 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 09:38:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F0B562157F49; Fri, 21 Aug 2020 13:38:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC0EA2157F24
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 13:38:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A28EF18AE962
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 13:38:07 +0000 (UTC)
Received: from v.cs-x.de (v.cs-x.de [193.30.121.81]) by relay.mimecast.com
	with ESMTP id us-mta-533-xh8UAiWYOeGWRb-RfBGg5w-1; Fri, 21 Aug 2020
	09:38:05 -0400
X-MC-Unique: xh8UAiWYOeGWRb-RfBGg5w-1
Received: from [192.168.1.153] (p5b21167d.dip0.t-ipconnect.de [91.33.22.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (Client did not present a certificate)
	by v.cs-x.de (Postfix) with ESMTPSA id 95EF485F11A
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:38:04 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Subject: Re: Accessible Distros for a beginner?
Date: Fri, 21 Aug 2020 15:37:59 +0200
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
To: blinux-list@redhat.com
In-Reply-To: <alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
Message-Id: <FE0B1152-6E6B-4972-8F52-8130BFC41A24@schoeppi.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07LDcAqt000832
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVnYXJkaW5nIHNibCB0aGVyZSBpcyBubyBwcm9ibGVtIHRvIHVzZSBpdCBvbiBEZWJpYW4gYmFz
ZWQgc3lzdGVtcyB3aGVuIGNvbXBpbGluZyBpdCBmcm9tIHNvdXJjZSBhbmQgY3JlYXRlIHN0YXJ0
IHNjcmlwdHMgb3Igc3lzdGVtZCB1bml0cy4KClVuZm9ydHVuYXRseSB0aGVyZSBpcyBubyBtb3Jl
IGRldmVsb3BtZW50IGZvciBzYmwsIHRoZSBtYWluIGRldmVsb3BlciBoYXMgcXVpdCBkZXZlbG9w
bWVudCB5ZWFycyBhZ28gZHVlIHRvIG90aGVyIHByb2plY3RzIGFuZCBiZWNhdXNlIGhlIGhhcyBu
b3QgZW5vdWdoIHRpbWUuCgpJIHdvcmtlZCB3aXRoIHNibCBmb3IgeWVhcnMgYnV0IEkgc3dpdGNo
ZWQgdG8gYnJsdHR5IHR3byBvciB0aHJlZSB5ZWFycyBhZ28uIEkgZG8gbWlzcyBhcHBsaWNhdGlv
biBiYXNlZCBzY3JlZW4gcmVhZGVyIHByb2ZpbGVzLCB0aGVyZSBzYnNsIGlzIG11Y2ggbW9yIGJl
dHRlciBhbmQgbW9yZSBmbGV4aWJsZSB0aGVuIGJybHR0eS4gQWxzbyBjb3BpbmcgdGV4dCBpbiB0
aGUgY29uc29sZSBpcyBtb3IgY29tZm9ydGFibGUgd2l0aCBzYmwuIEFuZCBvZmNvdXJzZSBpdHMg
bXVjaCBtb3JlIGVhc3kgdG8gY3JlYXRlIHVzZXIgc3BlY2lmaWMga2V5bWFwcyBmb3IgdGhlIGJy
YWlsbGUgZGV2aWNlIHdpdGggc2JsLgoKTWF5YmUgc29tZSBvZiB0aG9zZSBmZWF0dXJlcyBhcmUg
YWxzbyBhdmFpbGFibGUgZm9yIGJybHR0eSBhbmQgSSBkbyBub3Qga25vdyB0aGVtLCBidXQgZXNw
ZWNpYWx5IHRoZSBrZXltYXBzIGFuZCBjb3BpbmcgdGV4dCBpbiB0aGUgY29uc29sZSBpcyBkZWZh
bml0bHkgbGVzcyBjb21mb3J0YWJsZSB3aXRoIGJybHR0eS4KCkl0IHdvdWxkIGJlIG5pY2UgaWYg
ZGV2ZWxvcG1lbnQgb2Ygc2JsIGNhbiBiZSByZWFjdGl2YXRlZCBhbmQgaXQgd291bGQgYmUgYWxz
byBuaWNlIHRvIGhhdmUgYSBwYWNrYWdlIGZvciBEZWJpYW4gYmFzZWQgc3lzdGVtcy4gTWF5YmUg
aSBzaG91bGQgdHJ5IHRvIGNyZWF0ZSBzdWNoIGEgcGFja2FnZeKApi4KCkNoZWVycywKCiAgU2No
b2VwcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

