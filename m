Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7E75B1ED84D
	for <lists+blinux-list@lfdr.de>; Thu,  4 Jun 2020 00:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591221767;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PibjrC3S6Xto0xmudwE8Z4S5MTCZpc0OVvcU/3LGwFU=;
	b=cTkGTRWl3Fw9deFUuzfze2SJzgHBUGrH7K8t3cODL4WNivVy3Ncqcadic+UlTNLnq4Y5Sc
	CnIgMcdEDWIr2RhaFqGcQaq3a6QlEXqSLERRCRKGILa81lUAgKeZmVdhiociqVz0Qq/LpR
	GxAqjdhVxpDK/5WNbSu5ZsmuM+GNthk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-_zY80COrPymC5xa36Co7Ng-1; Wed, 03 Jun 2020 18:02:45 -0400
X-MC-Unique: _zY80COrPymC5xa36Co7Ng-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AB9380058E;
	Wed,  3 Jun 2020 22:02:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D80610013D6;
	Wed,  3 Jun 2020 22:02:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3EA49701E;
	Wed,  3 Jun 2020 22:02:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 053M2TGY031089 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Jun 2020 18:02:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB2782157F25; Wed,  3 Jun 2020 22:02:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF9F12166BA2
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 22:02:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D07280028C
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 22:02:25 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.98]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-449-vdBz_mQeN7CGLylscOAwgA-1; Wed, 03 Jun 2020 18:02:20 -0400
X-MC-Unique: vdBz_mQeN7CGLylscOAwgA-1
Received: from [80.187.97.255] (helo=[10.165.7.255])
	by smtprelay08.ispgateway.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
	(envelope-from <chrys@linux-a11y.org>) id 1jgbSl-0001CW-8m
	for blinux-list@redhat.com; Thu, 04 Jun 2020 00:02:19 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: Tiling WM with Orca, anyone?
Date: Thu, 4 Jun 2020 00:02:18 +0200
Message-Id: <69477010-C5C0-4312-A525-6144A297912F@linux-a11y.org>
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
In-Reply-To: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpCYXNpY2FsbHkgeW91IGNhbiB1c2UgYW55IGxpZ2h0d2VpZ2h0IFdNLiBPbmx5IGlz
c3VlIG1pZ2h0IGJlIHRoZSBhcHBsaWNhdGlvbiBzd2l0Y2hlciwgd2hhdCBzaG91bGQgYmUgYWNj
ZXNzaWJsZSBhcyB3ZWxsLgoKQUZBSVIgc3Rvcm0gb25jZSB3cm90ZSBhbiBhY2Nlc3NpYmxlIHdp
bmRvdyBzd2l0Y2hlciBmb3IgUmF0cGlzb24gV00KCmh0dHBzOi8vZW4ubS53aWtpcGVkaWEub3Jn
L3dpa2kvUmF0cG9pc29uCgpTZWUgaGVyZQoKaHR0cHM6Ly9naXRodWIuY29tL3N0b3JtZHJhZ29u
Mjk3Ni9zdHJ5Y2huaW5lCgpDaGVlcnMgY2hyeXMKCgo+IEFtIDAzLjA2LjIwMjAgdW0gMjM6Mjgg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPiAKPiDvu79IaSBldmVyeW9uZSwKPiAKPiBJIG5lZWQgdG8gaW5zdGFsbCBh
IGRpc3RybyBvbiBhIG1pbmltYWxpc3QgbWFjaGluZSBmb3IgYSBibGluZCBMaW51eCBuZXdiaWUs
IGJ1dCBpbiB0ZXN0aW5nIGV2ZW4gTWF0ZSBpcyBoYXZpbmcgaXNzdWVzLiBPaywgaXQncyBhIHBp
ZWNlIG9mIGp1bmssIGJ1dCBhbGwgdGhlIGd1eSdzIGdvdC4KPiAKPiBJIHdhcyB0aGlua2luZyBz
b21ldGhpbmcgbGlrZSBpMywgYnV0IG15IHJlc2VhcmNoIHNob3dzIGlzc3Vlcy4gV2hhdCB3b3Vs
ZCB5b3Ugc3VnZ2VzdD8gVGhlIG1hY2hpbmUgaXMgcHJvYmFibHkgb2xkIGVub3VnaCBzbyBJIGNv
dWxkIGhhdmUgYm91Z2h0IGl0IHNlY29uZCBoYW5kIHdoZW4gSSBmaW5pc2hlZCBoaWdoIHNjaG9v
bCAxNiB5ZWFycyBhZ28uCj4gCj4gLS0gCj4gV2FybSByZWdhcmRzL0dyb2V0bmlzL0hlcnpsaWNo
ZSBHcsO8w59lLAo+IAo+IEJyYW5kdCBTdGVlbmthbXAKPiAKPiBTZW50IHVzaW5nIFRodW5kZXJi
aXJkIGZyb20gVWJ1bnR1IE1hdGUgMjAuMDQKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

