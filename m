Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AA443771B
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 14:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634905737;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=H+vaolMXQ0gLobGKkwtOAoKuTZi72PIKQmuVDtXyYsg=;
	b=LbIZKBuqlJHGvxen2ZwszXZlIadp5G+euP96dTWSn+25/Mmk0pMw/PBskSUC26FbJwSb7N
	xxchRssSmOh37hbEr14M95fXNvWsv0mUtY3vOaEieym7TQWJhO3WtRD4H4Mn2Go9xTQxTV
	LNUWUb03JYXarld7HR3KQ1AGbhYagro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-naRrEp6lOZCQo4HDmBQ1FA-1; Fri, 22 Oct 2021 08:28:54 -0400
X-MC-Unique: naRrEp6lOZCQo4HDmBQ1FA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C74F801FCE;
	Fri, 22 Oct 2021 12:28:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77F525DA61;
	Fri, 22 Oct 2021 12:28:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5CE344ED2A;
	Fri, 22 Oct 2021 12:28:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MCSfna009379 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 08:28:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 483C22026D07; Fri, 22 Oct 2021 12:28:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42F1D2026D64
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:28:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 597E68007B1
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:28:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-463-KEu45eCOOhKhtr1LDoyXrQ-1;
	Fri, 22 Oct 2021 08:28:36 -0400
X-MC-Unique: KEu45eCOOhKhtr1LDoyXrQ-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2A041A1CDA
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:28:06 +0200 (CEST)
Message-ID: <b56f99ac-3869-fd7f-7abe-681b8db69b75@slint.fr>
Date: Fri, 22 Oct 2021 14:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: youtube-dl: list videos in order
To: blinux-list@redhat.com
References: <20211022.113332.040.27@[192.168.1.100]>
	<174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
In-Reply-To: <174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19MCSfna009379
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQ2hpbWUgYW5kIEFsbCwKCnRoZXJlIGlzIGEgZm9yayB0aGF0IHNlZW1zIHRvIGdldCBzb21l
IGF1ZGllbmNlOgpodHRwczovL2dpdGh1Yi5jb20veXQtZGxwCgpJdCBpcyBwYWNrYWdlZCBmb3Ig
RGViaWFuIEJ1bGxzZXllIGFuZCBTaWQsIE9wZW5TVVNFLCBBUmNoIChBVVIpIGFuZCAKRnJlZUJT
RC4KCkkgd2lsbCBwcm9iYWJseSBwYWNrYWdlIGl0IGZvciBTbGludC4KCkNoZWVycywKRGlkaWVy
Ci0tCkRpZGllciBTcGFpZXIKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbApodHRw
czovL3NsaW50LmZyL2RvYy9NYW51ZWxTbGludC5odG1sCgpMZSAyMi8xMC8yMDIxIMOgIDEzOjQw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gV2hpbGUg
SSd2ZSBvbmx5IHVzZWQgeW91dHViZS1kbCBmb3Igc2luZ2xlIHVybHMsIEkgd291bGQgc3VnZ2Vz
dCB0cnlpbmcgCj4geW91dHViZS12aWV3ZXLCoCB3aXRoIGEgLXUgZmxhZyBmb3IgdXNlciBuYW1l
LiBUaGUgdmlkZW9zIHdvdWxkIGJlZ2luIAo+IHdpdGggbW9zdCByZWNlbnQuIEl0cyBhbHNvIGlu
dGVyZXN0aW5nLCB3aGVuIHR5cGluZwo+IHlvdXR1YmUtZGwgLVUKPiB0aGVyZSBoYXNuJ3QgYmVl
biBhbiB1cGRhdGUgc2luY2UgSnVuZSAwNi4KPiBDaGltZQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

