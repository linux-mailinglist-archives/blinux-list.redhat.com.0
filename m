Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CE5B63700F3
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 21:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619809486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V7dw40qY+sHv/iYYJuLXn+e4dyQYeyj1As4IBOasV/c=;
	b=CHX4ZOzkrh/rWcB+9st/QBs2PAE/PDuCAAVuIb8k7qZ8kE3T852J+VOB4k2PgtHbwQwEj0
	GEh3YDzb/cvlS0kyWZJ1oSMGTc4dp/FX5HmbSpg/LVBJAdZebcgTGwJmvS+qJs/FuQE21X
	fRdzL3cLAB6MK0j/2Tov0EmWslk5BlI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-Ylvgv0VpOSufsGkKryKAvg-1; Fri, 30 Apr 2021 15:04:43 -0400
X-MC-Unique: Ylvgv0VpOSufsGkKryKAvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B872800C7A;
	Fri, 30 Apr 2021 19:04:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E2B35C232;
	Fri, 30 Apr 2021 19:04:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5DCB38397;
	Fri, 30 Apr 2021 19:04:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UJ2vPM018918 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 15:02:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C3E6209A7F9; Fri, 30 Apr 2021 19:02:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48078209A7F7
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 19:02:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 147FF1857F28
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 19:02:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-66-ZJnqA2ARNpqXyg3UeUhAzA-1;
	Fri, 30 Apr 2021 15:02:52 -0400
X-MC-Unique: ZJnqA2ARNpqXyg3UeUhAzA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DB62EA3FC3
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:02:40 +0200 (CEST)
Subject: Re: Best Distro for Blind
To: blinux-list@redhat.com
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
	<YIxCF1C83HFrpbkN@panix.com>
	<CAO2sX33xYLcdO7pDhYJ9L2_7T8_mv4Bhu6Msr4oRuqj1bk3WuA@mail.gmail.com>
	<alpine.NEB.2.23.451.2104301441020.15796@panix1.panix.com>
Message-ID: <a58dbab4-9276-2127-00c8-cae1bb56c6ed@slint.fr>
Date: Fri, 30 Apr 2021 21:02:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2104301441020.15796@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13UJ2vPM018918
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QW5zd2VyIGluIGxpbmUuLi4KCkxlIDMwLzA0LzIwMjEgw6AgMjA6NDgsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJIGhhdmUgamVudXggaW5zdGFsbGVk
IG9uIGEgZHJpdmUgc2luY2Ugc2xpbnQgaGFzbid0IGdvdCBkb3NlbXUyIHlldC4KClNvcnJ5IGZv
ciB0aGF0IEp1ZGUsIGFzIHdlIGRpc2N1c3NlZCBvbiB0aGUgU2xpbnQgbWFpbGluZyBsaXN0Cnlv
dSB3aWxsIGhhdmUgdG8gd2FpdCBhIGJpdCBmb3IgZG9zZW11IGluIFNsaW50LgoKSSBqdWR0IGhv
cGUgaXQncyBub3QgYSAibXVzdCBoYXZlIiBmb3IgSm9obiAob3IgaGUgY291bGQgZG8gYXMgeW91
CmRpZCB0byBnZXQgaXQpLgoKQ2hlZXJzLApEaWRpZXIKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

