Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ACE4341F
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jun 2019 10:29:33 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 661B910C94;
	Thu, 13 Jun 2019 08:29:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C8B25D9C9;
	Thu, 13 Jun 2019 08:29:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C412C589;
	Thu, 13 Jun 2019 08:28:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5D8RRx8004548 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 13 Jun 2019 04:27:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 029A05D720; Thu, 13 Jun 2019 08:27:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx05.extmail.prod.ext.phx2.redhat.com
	[10.5.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F165318A50
	for <blinux-list@redhat.com>; Thu, 13 Jun 2019 08:27:20 +0000 (UTC)
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com
	[192.185.196.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A427E2EED34
	for <blinux-list@redhat.com>; Thu, 13 Jun 2019 08:26:54 +0000 (UTC)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id C982A400C34DA
	for <blinux-list@redhat.com>; Thu, 13 Jun 2019 02:48:02 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id bL4EhXgihiQerbL4Eh5Srg; Thu, 13 Jun 2019 03:26:42 -0500
X-Authority-Reason: nr=8
Received: from [176.230.228.206] (port=39020 helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1hbL4E-000fLc-8O
	for blinux-list@redhat.com; Thu, 13 Jun 2019 03:26:42 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 705B6260044
	for <blinux-list@redhat.com>; Thu, 13 Jun 2019 11:26:39 +0300 (IDT)
Date: Thu, 13 Jun 2019 11:26:38 +0300
To: blinux-list@redhat.com
Subject: Re: 2 Debian Issues??
Message-ID: <20190613112638.00345997@telaviv1.shlomifish.org>
In-Reply-To: <Pine.LNX.4.64.1906121630310.30932@server2.shellworld.net>
References: <Pine.LNX.4.64.1906121630310.30932@server2.shellworld.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 176.230.228.206
X-Source-L: No
X-Exim-ID: 1hbL4E-000fLc-8O
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (telaviv1.shlomifish.org) [176.230.228.206]:39020
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.29]); Thu, 13 Jun 2019 08:27:06 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Thu, 13 Jun 2019 08:27:06 +0000 (UTC) for IP:'192.185.196.23'
	DOMAIN:'gateway36.websitewelcome.com'
	HELO:'gateway36.websitewelcome.com'
	FROM:'shlomif@shlomifish.org' RCPT:''
X-RedHat-Spam-Score: -0.011  (RCVD_IN_DNSWL_NONE, SPF_HELO_PASS) 192.185.196.23
	gateway36.websitewelcome.com 192.185.196.23
	gateway36.websitewelcome.com <shlomif@shlomifish.org>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.29
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x5D8RRx8004548
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 13 Jun 2019 08:29:27 +0000 (UTC)

T24gV2VkLCAxMiBKdW4gMjAxOSAxNjo0NDowMCAtMDcwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gV2VsbCwgbWFu
eSBtb250aHMgYWdvIFRpbSB3YXMgcXVpdGUgYSBoZWxwIGluIGEgcmVsYXRlZCBpdGVtLiBZZXMs
IEkgY2FuIGF0IAo+IGxlYXN0IGNoYW5nZSB0aGUgYmVlcCBhbmQgbGVuZ3RoIGFzIHNvbWV0aGlu
ZyBsaWtlCj4gc2V0dGVybSAtYmZyZXEgNDQwIC1ibGVuZ3RoIDIwMAo+IEhvd2V2ZXIsIGNhbiB5
b3UgcGxlYXNlIGluZm9ybSB3aGVyZSB0byBwdXQgdGhlc2Ugc28gdGhleSBzZXJ2aXZlIGEgYm9v
dC4KPiBCdXQgbm93LCBJIHRoaW5rIHNpbmNlIGFuIHVwZ3JhZGUgdG8gS2VybmVsIDUuMS4zIHdo
aWxlIEkgY2FuIHJ1biBjb21tYW5kcwo+IGZvciBjaGFuZ2luZyByb3dzLWFuZC1jb2x1bW5zLCB0
aGV5IGFyZSBub3QgYWZmZWN0aXZlLiBNb3N0bHkgcnVubmluZyBTaWQKPiB3aXRoIDEzNWxpbmVz
LCBidXQgbXkgbGFwdG9wIG9ubHkgaGFzIDExMi4gSW4gc2VhcmNoaW5nLCBhIG1lbnRpb24gd2Fz
IG1hZGUKPiBvZiB4cmFuZHIgYnV0IEkgYW0gbm90IHJ1bm5pbmcgYW4geCBzZXJ2ZXIuIEhvd2V2
ZXIsIHdoaWxlIEkgYW0gaW4gVENTSCwgaXQKPiBkb2Vzbid0IHdvcmsgaW4gYmFzaCBlaXRoZXIu
IFRoYW5rcyBzbyBtdWNoIGluIGFkdmFuY2UgZm9yIGFueSBndWlkYW5jZQo+IENoaW1lCj4KCkhp
IENoaW1lLAoKcGVyaGFwcyB1c2Ugb25lIG9mIHRoZXNlOgoKKiBodHRwczovL2R1Y2tkdWNrZ28u
Y29tLz9xPWJhc2hyYyZhdGI9djE0MC0xJmlhPXdlYgoKKiBodHRwczovL2R1Y2tkdWNrZ28uY29t
Lz9xPWJhc2hfcHJvZmlsZSZhdGI9djE0MC0xJmlhPXdlYgoKKiBodHRwczovL2Jsb2cuc2tiYWxp
LmNvbS8yMDE5LzAzL3N0YXJ0LWEtc2NyaXB0LW9uLWJvb3QtdXNpbmctc3lzdGVtZC8KCm9yIGVx
dWl2YWxlbnQgZm9yIHRjc2ggKHNlZSBodHRwczovL3d3dy5zaGxvbWlmaXNoLm9yZy9vcGVuLXNv
dXJjZS9hbnRpL2NzaC8KdGhvdWdoKS4KClJlZ2FyZHMsCgoJU2hsb21pCgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCgotLSAKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU2hsb21pIEZpc2gg
ICAgICAgaHR0cDovL3d3dy5zaGxvbWlmaXNoLm9yZy8KV2hhdCBNYWtlcyBTb2Z0d2FyZSBBcHBz
IEhpZ2ggUXVhbGl0eSAtICBodHRwOi8vc2hsb20uaW4vc3ctcXVhbGl0eQoKQmFydGgncyBEaXN0
aW5jdGlvbjogIFRoZXJlIGFyZSB0d28gdHlwZXMgb2YgcGVvcGxlOiB0aG9zZSB3aG8gZGl2aWRl
IHBlb3BsZQppbnRvIHR3byB0eXBlcywgYW5kIHRob3NlIHdobyBkb24ndC4KICAgIOKAlCB2aWEg
Zm9ydHVuZS1tb2QuCgpQbGVhc2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0
IHBvc3QgLSBodHRwOi8vc2hsb20uaW4vcmVwbHkgLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0
