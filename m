Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 25C993F50FD
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 21:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629745465;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vh5+9Yc2ThrymAXmenk8MmBrwJw6HOgqaeuBtzzNxLs=;
	b=O/pdMyF3Ko8RJ32NC22qOJ11FT3x1shsBorYlfcOL566TV34PQGK0uNEj+AkqF02QGR170
	QMZ1cbYpXqvNWulV4YR3iBLilED5kATL4ZhTs35D3JDOSZLc/y87C5RucOcSgs2aZW5Qrj
	5zMtwHsShCld1IROMFZdtFGb8l2Dioc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-83hFHQMZP9eegmw1CoE7Pw-1; Mon, 23 Aug 2021 15:04:23 -0400
X-MC-Unique: 83hFHQMZP9eegmw1CoE7Pw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2220100808B;
	Mon, 23 Aug 2021 19:04:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0A4F69280;
	Mon, 23 Aug 2021 19:04:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34BB2181A0F7;
	Mon, 23 Aug 2021 19:04:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NJ416f009377 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 15:04:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 952389C06E; Mon, 23 Aug 2021 19:04:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9081E63F5C
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 19:03:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9F93800159
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 19:03:58 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-211-JRSCFP_WOv-ER7h6B8-eqQ-1;
	Mon, 23 Aug 2021 15:03:56 -0400
X-MC-Unique: JRSCFP_WOv-ER7h6B8-eqQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9AC99A1D09
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 19:03:44 +0200 (CEST)
Subject: Re: Request: sending Qemu script privately
To: blinux-list@redhat.com
References: <CAD_4ddRofoD=eRyT2j+eXPf1SRGz343=gE1XLgbMqT8JKKZ68g@mail.gmail.com>
Message-ID: <83e0df8c-65de-86b5-4457-b3b1268d00fa@slint.fr>
Date: Mon, 23 Aug 2021 21:03:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddRofoD=eRyT2j+eXPf1SRGz343=gE1XLgbMqT8JKKZ68g@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NJ416f009377
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

SGVsbG8sCgpodHRwczovL3d3dy5mcmVlbGlzdHMub3JnL3Bvc3Qvc2xpbnQvVk0sMTUKc21hbGwg
Y29ycmVjdGlvbiBoZXJlOgpodHRwczovL3d3dy5mcmVlbGlzdHMub3JnL3Bvc3Qvc2xpbnQvVk0s
MTYKCkNoZWVycywKCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKZGlk
aWVyYXRzbGludGRvdGZyCgpMZSAyMy8wOC8yMDIxIMOgIDE3OjU3LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8gZXZlcnlvbmUsCj4gCj4gSSBh
bSBpbiBkZXNwZXJhdGUgbmVlZCBvZiBhIHdpbmRvd3MgdmlydHVhbCBtYWNoaW5lLCBhbmQgSSBj
YW5ub3QgZmluZCB0aGUKPiB3b3JraW5nIFFlbXUgc2NyaXB0IHRoYXQgd2FzIHNlbnQgdG8gdGhp
cyBsaXN0Lgo+IFNvIG15IHF1ZXN0aW9uIGlzLCBjb3VsZCBhbnlvbmUgcGxlYXNlIHNlbmQgbWUg
cHJpdmF0ZWx5IGEgd29ya2luZyB2ZXJzaW9uCj4gb2YgdGhlIFFlbXUgdm0gc2NyaXB0Pwo+IFRo
YW5rcyBpbiBhZHZhbmNlLgo+IEJlc3QgcmVnYXJkcy4KPiBGcmFuY2lzY28uCj4gUC5TLiBJbiBh
bSBvbiBmZWRvcmEgMzQsIG1hdGUgc3Bpbi4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

