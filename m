Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 595652EA122
	for <lists+blinux-list@lfdr.de>; Tue,  5 Jan 2021 00:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609804312;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xeA/QYM80p/IU1GkLhlgMeCc3AFWeqt2FTguNjz/U18=;
	b=jRnC+oTYSauxSvRd4gNmv2zE0yUyOf0ZnrPFQkDMAMCnea9aBoLB4pNC8NLwdkzocFg86a
	pE8qPcjrMXsVTE8RyKROe0UtJO6U2hVh9VW8q2+78kUql2TDwQcOgE7qv1ULcOHXpYAAZ0
	DRrotVjq6v7f5iCoW05db00W75LNHMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-hi7iQNd1PzKCi5xy2EUGZw-1; Mon, 04 Jan 2021 18:51:50 -0500
X-MC-Unique: hi7iQNd1PzKCi5xy2EUGZw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B272107ACE3;
	Mon,  4 Jan 2021 23:51:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B47E5C8AA;
	Mon,  4 Jan 2021 23:51:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 549061809C9F;
	Mon,  4 Jan 2021 23:51:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 104NpPta018668 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Jan 2021 18:51:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DDDF2026D3B; Mon,  4 Jan 2021 23:51:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4849F2026D76
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 23:51:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF6598039DD
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 23:51:22 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-418-BNfd47mLPneDnv_rjttZ_w-1;
	Mon, 04 Jan 2021 18:51:20 -0500
X-MC-Unique: BNfd47mLPneDnv_rjttZ_w-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 102B5BE2FB;
	Mon,  4 Jan 2021 23:50:17 +0100 (CET)
Subject: Re: cli-party sennet error
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2101041403160.8138@panix1.panix.com>
Message-ID: <b8b3b0ad-41f7-53b9-e3e6-8c1d30c22585@slint.fr>
Date: Tue, 5 Jan 2021 00:51:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2101041403160.8138@panix1.panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 104NpPta018668
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBqdXN0IGNvbW11bmljYXRlZCB3aXRoIFN0b3JtIERyYWdvbiwgYXV0aG9yIG9mIGNsaS1wYXJ0
eSBhbmQKbWFpbnRhaW5lciBvZiBTdG9ybXV4LiBBcyBmb3IgYW4gdW5rbm93biByZWFzb24gaGUg
Y2FuJ3QgZ2V0IGhpcwplbWFpbHMgdG8gcmVhY2ggdGhpcyBsaXN0IGhlJ2QgbGlrZSB0aGF0IHlv
dSBwb3N0IGlzc3VlcyB3aXRoIGNsaS1wYXJ0eQpvbiB0aGUgU3Rvcm11eCBtYWlsaW5nIGxpc3Qu
IExpbmtzIG9uIHRoaXMgcGFnZToKaHR0cHM6Ly9ncm91cHMuaW8vZy9zdG9ybXV4CgpBcyBhbiBh
c2lkZSwgSSBkaWRuJ3QgaGF2ZSB0byB1c2UgcGlwIHRvIGluc3RhbGwgaHRtbDJ0ZXh0LApqdXN0
IHR5cGVkCnNib3BrZyAtaSBodG1sMnRleHQuCgpCZXN0IHJlZ2FyZHMsCkRpZGllcgoKTGUgMDQv
MDEvMjAyMSDDoCAyMDowOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IEVycm9yIGlzIHRvbyBtYW55IGFyZ3VtZW50cyBvbiBzZW5uZXQuc2ggbGluZSAy
OC4KPiBOb25lIG9mIHRoZSBzcXVhcmVzIHNwZWFrIGRlc2NyaXB0aW9ucyB3aGVuIGxhbmRlZCBv
biBpbiBzZW5uZXQgZWl0aGVyLiAKPiBLbm93aW5nIHRoZSBuYW1lcyBvZiB0aGUgc3F1YXJlcyBh
cyB5b3UgbGFuZCBvbiB0aGVtIGlzIHRoZSBtb3N0IAo+IHZhbHVhYmxlIHBhcnQgb2YgdGhlIGdh
bWUuCj4gU3F1YXJlIDE1IGlzIE5ldyBMaWZlIGFuZCBTcXVhcmUgMjYgaXMgVGhlIEhvdXNlIG9m
IEJlYXV0eSBhbmQgU3F1YXJlIDI3IAo+IHBvb2wgb2Ygd2F0ZXJzIHlvdSBkb24ndCB3YW50IHRv
IGxhbmQgb24gc2luY2UgdGhlIGNyb2NvZGlsZSBnZXRzIGx1bmNoLgo+IEknbSBnbGFkIEkgY2hl
Y2tlZCB0aGlzIHdoZW4gSSBkaWQuwqAgSSBmaW5hbGx5IGdvdCBodG1sMnRleHQgaW5zdGFsbGVk
IAo+IGFuZCB3b3JraW5nIGFuZCBvbiBzbGludCBJIGhhZCB0byB1c2UgcGlwIGluc3RhbGwgaHRt
bDJ0ZXh0IHRvIGdldCB0aGF0IAo+IGRvbmUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

