Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id E8AAF19A510
	for <lists+blinux-list@lfdr.de>; Wed,  1 Apr 2020 08:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585721104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J25QTilnM1i2/uRt7ympURI6mJ7QxdoAq0DJLrH5Mb0=;
	b=giMMRRB+H2eB1oMXiul88lypx+bU6q9LFpyajeGqBftyLVX+Ic8qc9sKlqecHJ/FnvEnuL
	2Wi8kICIbUmTnut1B6J9oA3HHMIyaPfj7QFRuD2KbHeIFHAegRRPtAjxmOUf+15RMBp9u3
	R1Bk4+cj2Hjhe2h9HW/rYUbzHQuYvDg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-ZxgqwVsANwqbnewcJ9so5g-1; Wed, 01 Apr 2020 02:05:02 -0400
X-MC-Unique: ZxgqwVsANwqbnewcJ9so5g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4725107ACC7;
	Wed,  1 Apr 2020 06:04:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B778699DE4;
	Wed,  1 Apr 2020 06:04:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C088386C00;
	Wed,  1 Apr 2020 06:04:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03164aBa023717 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Apr 2020 02:04:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B72831003211; Wed,  1 Apr 2020 06:04:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2B5B10031FF
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 06:04:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7543A800295
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 06:04:34 +0000 (UTC)
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
	[192.185.46.107]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-54-tVvCQsLgO_yD_QHrHu263w-1; Wed, 01 Apr 2020 02:04:32 -0400
X-MC-Unique: tVvCQsLgO_yD_QHrHu263w-1
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id C6240400CECFB
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 23:48:23 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id JWUIjlxbDXVkQJWUIj0se6; Wed, 01 Apr 2020 01:04:30 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:33724
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jJWUI-003ND9-Av
	for blinux-list@redhat.com; Wed, 01 Apr 2020 01:04:30 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 90B192610E2
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 09:04:27 +0300 (IDT)
Date: Wed, 1 Apr 2020 09:04:27 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Alien::SVN
Message-ID: <20200401090427.3839f720@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
References: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.230
X-Source-L: No
X-Exim-ID: 1jJWUI-003ND9-Av
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:33724
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03164aBa023717
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCgpPbiBUdWUsIDMxIE1hciAyMDIwIDE5OjM4OjIxIC0wNDAwCkxpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBpcyBB
bGllbjo6U1ZOIHN1cHBvc2VkIHRvIHRha2Ugc2V2ZXJhbCBob3VycyB0byBpbnN0YWxsPwo+IElm
IG5vLCB0aGF0J3Mgd2hhdCdzIGhhcHBlbmluZyBvdmVyIGhlcmUuCj4gSWYgSSBldmVyIHJ1biB0
aGlzIGFnYWluIEkgdGhpbmsgSSB3YW50IHRvIHdhdGNoIHBlcmwgY29kZSBleGVjdXRpb24gYXMg
aXQKPiBoYXBwZW5zIHdoZW4gdGhpcyBvbmUgaW5zdGFsbHMuCj4gCgpEaWQgeW91IG1hbmFnZSB0
byBzb3J0IGl0IG91dCBieSBub3c/IElmIG5vdCwgY2FuIHlvdSBwcm92aWRlIG1vcmUgZGV0YWls
cwphYm91dDoKCjEuIHlvdXIgZGlzdHJvK3ZlcnNpb24KCjIuIHdoeSBkbyB5b3UgbmVlZCBBbGll
bjo6U1ZOPwoKMy4gSG93IGFyZSB5b3UgaW5zdGFsbGluZyBpdD8KClNlZSBodHRwczovL2dpdGh1
Yi5jb20vc2hsb21pZi93cml0aW5nLXRoZS1wZXJmZWN0LXF1ZXN0aW9uIC4KClRoYW5rcyEKCgo+
IAo+IAo+IC0tCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gCgoKCi0tIAoKU2hsb21pIEZpc2ggICAgICAgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcv
Cmh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL2h1bW91ci93YXlzX3RvX2RvX2l0Lmh0bWwKCkNo
dWNrIE5vcnJpcyB3aWxsIGtpbGwgeW91IGp1c3QgZm9yIHRoZSBmdW4gb2Yga2lja2luZyB5b3Vy
IERlYXRoJ3MgYXNzIHRpbGwgaXQKcnVucyBhd2F5LCB0aGVuIGJlYXRpbmcgeW91ciBzb3VsIGJh
Y2sgaW50byB5b3VyIGNvcnBzZS4gKGJ5IGUtbmVrbykuCiAgICDigJQgaHR0cDovL3d3dy5zaGxv
bWlmaXNoLm9yZy9odW1vdXIvYml0cy9mYWN0cy9DaHVjay1Ob3JyaXMvCgpQbGVhc2UgcmVwbHkg
dG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3QgLSBodHRwOi8vc2hsb20uaW4vcmVw
bHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

