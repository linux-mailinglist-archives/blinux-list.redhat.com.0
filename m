Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA2924EB59
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 06:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598156950;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3xXVeVjBc4yIFUrqQ77DhdJVb4HX1OMBChWUoASbQMg=;
	b=Eiu9xaYnzvjBMeIKn2KMAGmcSoDOnHRHKZbuWrJmEqz/mUCPg6AiQb1LRm6X6TvpVjbpgr
	09reo24AobeiJxqsAQBzSxpTSazM0RaiCR/Bf3x9l0LlYcffPNzy6cOPZFa8p+BzrQww4X
	baJOiuoKC3aiqG7kG/y0Qn/4RV0dKac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-COLp4byvMUeKty6oRis-9Q-1; Sun, 23 Aug 2020 00:29:07 -0400
X-MC-Unique: COLp4byvMUeKty6oRis-9Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74C948030CA;
	Sun, 23 Aug 2020 04:29:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F39B10013C2;
	Sun, 23 Aug 2020 04:29:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA95818095FF;
	Sun, 23 Aug 2020 04:28:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07N4Sjei028952 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 00:28:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8F7872166BA2; Sun, 23 Aug 2020 04:28:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8ABEC2166B27
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 04:28:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BEE12101A53F
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 04:28:42 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-485-MOjGUCrMOB28JbZYx3jhXQ-1;
	Sun, 23 Aug 2020 00:28:39 -0400
X-MC-Unique: MOjGUCrMOB28JbZYx3jhXQ-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 88A43BE7E3
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 05:27:59 +0200 (CEST)
Subject: Re: Trying Slint
To: blinux-list@redhat.com
References: <6C4ABCA6-7F62-489D-B025-B06C680722D4@schoeppi.net>
Message-ID: <aa9cf102-9283-0b02-17ac-1f648a68df3f@slint.fr>
Date: Sun, 23 Aug 2020 06:28:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <6C4ABCA6-7F62-489D-B025-B06C680722D4@schoeppi.net>
Content-Language: fr
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07N4Sjei028952
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gU2Nob2VwcCBhbmQgYWxsLAoKbm8sIHRoZSBjdXJyZW50IElTTyBpcyBoZXJlOgoKaHR0
cHM6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE0LjIuMS9pc28vCkdlbmVyaWMg
aW5zdHJ1Y3Rpb25zIGZvciBpbnN0YWxsYXRpb246Cmh0dHBzOi8vc2xhY2t3YXJlLnVrL3NsaW50
L3g4Nl82NC9zbGludC0xNC4yLjEvUkVBRE1FLmluc3RhbGxhdGlvbgpGb3IgYWNjZXNzaWJpbGl0
eSwgaW5jbHVkaW5nIGR1cmluZyBpbnN0YWxsYXRpb246Cmh0dHBzOi8vc2xhY2t3YXJlLnVrL3Ns
aW50L3g4Nl82NC9zbGludC0xNC4yLjEvZG9jL0FjY2Vzc2liaWxpdHkvQWNjZXNzaWJpbGl0eQpH
ZW5lcmFsIGluZm9ybWF0aW9uOgpodHRwczovL3NsaW50LmZyLwpNYWlsaW5nIGxpc3QsIGZvciBz
dXBwb3J0IGFuZCBkaXNjdXNzaW9uOgpodHRwczovL3NsaW50LmZyL2Jsb2cvd2VsY29tZS10by10
aGUtbmV3LXNsaW50LW1haWxpbmctbGlzdC5odG1sCgpDaGVlcnMsCgpEaWRpZXIKClBTIGEgbmV3
IGluc3RhbGxlciBpcyBpbiB0aGUgbWFraW5nLCBpdCBzaG91bGQgYmUgYXZhaWxhYmxlIGluIGEg
ZmV3IHdlZWtzCgpMZSAyMy8wOC8yMDIwIMOgIDAxOjU1LCBTY2hvZXBwIGEgw6ljcml0wqA6Cgo+
IGlzIHRoZSBTb3VyY2VGb3JnZSBzaXRlIGZvciBzbGludCB0aGUgcmlnaHQgcGxhY2UgdG8gZG93
bmxvYWQgdGhlIG5ld2VzdCBpbnN0YWxsZXI/IEp1c3Qgd29uZGVyaW5nLCBiZWNhdXNlIHRoZSBs
YXRlc3QgdXBkYXRlIHRvIHRoZSBpbnN0YWxsZXIgaXMgZnJvbSBNYXJjaCAyMDE5LiBJcyB0aGlz
IE9LIG9yIGlzIHRoZXJlIGEgbW9yZSByZWNlbnQgaW5zdGFsbGVyIHNvbWV3aGVyZT8KPiAKPiBD
aGVlcnMsCj4gCj4gICBTY2hvZXBwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

