Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E1D41184A8E
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 16:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584112990;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Mg7kdOcGeZjleBmLiWSttzjlhBo2EGuxN/2aMGj8Yw=;
	b=gKOMdBWp+GtJmk2gQr7JCp1GJM+bs4CfR7PEOQdLY/XJNbSBh/rFWK8Rg0pLQz5r30wZGD
	BazRSwaA55w2zn+ARIvVW7X4L8Lm6/BW5ifczPieWJlK4pG9PJKCKZfE2bdpcNwLhkGF9r
	f+FR1p89C6bAPVmhyV34xijgWhSZFeU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-Ecw3fS7LPyWElHVe27uVvQ-1; Fri, 13 Mar 2020 11:23:06 -0400
X-MC-Unique: Ecw3fS7LPyWElHVe27uVvQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2017B1005512;
	Fri, 13 Mar 2020 15:23:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A99375DA81;
	Fri, 13 Mar 2020 15:23:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 525FF85EC8;
	Fri, 13 Mar 2020 15:22:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DFMqn1008573 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 11:22:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AEEBB12F98A; Fri, 13 Mar 2020 15:22:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAA4A13AF54
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 15:22:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3F3E185A79B
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 15:22:50 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-w9Y-kBlbOVq7DzfGXviiYQ-1; Fri, 13 Mar 2020 11:22:48 -0400
X-MC-Unique: w9Y-kBlbOVq7DzfGXviiYQ-1
Received: by mail-qt1-f181.google.com with SMTP id v15so7807077qto.2
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 08:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=D3bKvs00gT7NaihzX4YCFwl/0ARJMMnmvTTLlgxzwro=;
	b=s7uF7OX8xmA55JW4FlyXM1jv+lijUz/YypHRm1M8qX0Vpd/zoXgmZatS8WjG4gCjup
	tMeusFPU/v7MvRiRtQZiVer1Dj3DbBcJr7GrZANp+dexlUFsfpr5HGs9ati4wn71DAx4
	8GX5iI3Lo+ciD9YN/4/bYktp0yj5v6X4AXaz+w4DCdl8GHUSuFZ0BZi0V1BMF02AaZI7
	G6kUAuHH0s6jykj/mwkU0YEO1EvLvLXHGAVfF7Ih1wF9k4PG56j4wgXHJQ+FWUCrpQld
	Rz6SVV0YsMFdTSRiMaOoJ/GOL7Q/Qfh9CMdvY5rm+htYx2okgfnZQRIbOWru3qsZn5P5
	peCA==
X-Gm-Message-State: ANhLgQ1wRPes1XUhgmavdtcvZNYtUME4vU1chFhBXcrhj4NDANDRTHCj
	otcocF6D3LiFfE5tM18+uYU7WAoI9Lc=
X-Google-Smtp-Source: ADFU+vvWOV0dz3ThlNWq0GOefOgt0uDPv52f3OGDhWaaniQzak4+GEuD1UhDU1vbcqqOczN/BwGCOQ==
X-Received: by 2002:ac8:7511:: with SMTP id u17mr12620642qtq.316.1584112967297;
	Fri, 13 Mar 2020 08:22:47 -0700 (PDT)
Received: from [192.168.0.67] ([204.29.85.5]) by smtp.gmail.com with ESMTPSA id
	x7sm23589455qkx.110.2020.03.13.08.22.45 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 08:22:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Stormux is born.
Date: Fri, 13 Mar 2020 10:22:44 -0500
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
Message-Id: <D7192D8C-EE46-46D2-ACDA-4FA429C4EF43@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DFMqn1008573
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0cmllZCBUdWlyLCBhbmQgaXRzIG9yaWdpbmF0b3IsIG5laXRoZXIgYXJlIHZlcnkgYWNjZXNz
aWJsZS4gVW5sZXNzIHRoZXJl4oCZcyBzb21lIGZsYWcgb3IgY29tbWFuZCBsaW5lIG9wdGlvbiBJ
4oCZdmUgbm90IGhlYXJkIGFib3V0LCBvciBpZiBGZW5yaXIgaGFzIHNvbWUgd2F5IG9mIGRlYWxp
bmcgd2l0aCBhbGwgdGhhdC4KCj4gT24gTWFyIDEzLCAyMDIwLCBhdCAxMDowNiBBTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gCj4gcmVkZGl0IHdvdWxkIHByb2JhYmx5IGJlIGFub3RoZXIgZ29vZCBwbGF0Zm9ybSBm
b3Igc3Rvcm11eC4gIFVzaW5nIHBpcDMKPiBpbnN0YWxsIHR1aXIgYXMgcm9vdCB3aWxsIGdldCB5
b3UgYSB0ZXJtaW5hbCBjbGllbnQgZm9yIHJlZGRpdCBpZiB5b3UKPiBoYXZlbid0IGdvdCBvbmUg
eWV0Lgo+IAo+IE9uIEZyaSwgMTMgTWFyIDIwMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gCj4+IERhdGU6IEZyaSwgMTMgTWFyIDIwMjAgMDk6MTY6MzEKPj4g
RnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4KPj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gU3ViamVjdDogU3Rvcm11
eCBpcyBib3JuLgo+PiAKPj4gSSdtIHZlcnkgaGFwcHkgdG8gc2VlIHRoaXMgcHJvamVjdCBjb250
aW51ZWQsIGFuZCBJIGhhdmUgYWxyZWFkeSBzdGFydGVkIHdvcmtpbmcgb24gdGhlIHNvY2lhbCBt
ZWRpYSBhc3BlY3QgYW5kIG1hcmtldGluZyBhbmQgcHJvbW90aW9uLiBTdG9ybXV4IG5vdyBoYXMg
YSBUZWxlZ3JhbSBjaGFubmVsIHRoYXQgd2lsbCBhbm5vdW5jZSBuZXdzIGFuZCByZWxlYXNlIG5v
dGVzLAo+PiBodHRwczovL3QubWUvc3Rvcm11eAo+PiBhcyB3ZWxsIGFzIGEgbGlua2VkIGdlbmVy
YWwgZGlzY3Vzc2lvbiBncm91cCBhdAo+PiBodHRwczovL3QubWUvc3Rvcm11eF9kaXNjdXNzaW9u
Cj4+IFN0b3JtdXggd2lsbCBhbHNvIHNvb24gYmUgYXZhaWxhYmxlIG9uIG1vc3Qgb2YgdGhlIHVz
dWFsIHNvY2lhbCBtZWRpYSBjaGFubmVscyBpbmNsdWRpbmcgRmFjZWJvb2sgYW5kIFR3aXR0ZXIu
IEknbSBoYXBweSB0byB3b3JrIHdpdGggdGhpcyBwcm9qZWN0LCBhbmQgd2lsbCBkbyBteSBiZXN0
IHRvIGtlZXAgZXZlcnlvbmUgaW50ZXJlc3RlZCB1cGRhdGVkIHJlZ2FyZGluZyBpdHMgc3RhdHVz
IGFuZCBmZWF0dXJlcy4KPj4gfkt5bGUKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IAo+IAo+IC0tIAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

