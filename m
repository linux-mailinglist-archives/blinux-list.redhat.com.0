Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4A42D20704D
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 11:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592991995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E1+W9syLfoPeM1WuDTxYaSLTMjdvnhR78WFzsCTZVFM=;
	b=UcvE6CD1jRXMN0aKRk2UJ7d2bZAB8dA7JcuhvBXh57LSqcTI6Bm90vpjOxfMEx/5Gr7Wmz
	GqUSFQMMYywxDA2QJkHaxRm5eAWQXVSS2DTAw4/umUYF/5jJE5+fDopPLd4Oz89K8KTezX
	hk/nD6z54AKRhMf8JvlF5f/DKINlpKE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-6HV6q3LbMu-jcVK65wK2Lg-1; Wed, 24 Jun 2020 05:46:33 -0400
X-MC-Unique: 6HV6q3LbMu-jcVK65wK2Lg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0CC67BAD;
	Wed, 24 Jun 2020 09:46:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D1121974E;
	Wed, 24 Jun 2020 09:46:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5467E104903;
	Wed, 24 Jun 2020 09:46:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05O9kHBE016170 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 05:46:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 92B692029F83; Wed, 24 Jun 2020 09:46:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D6BA201EB66
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 09:46:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D7D8800394
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 09:46:14 +0000 (UTC)
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
	[50.116.125.1]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-235-t5WTW8edMvGHpC0AAdC0zA-1; Wed, 24 Jun 2020 05:46:11 -0400
X-MC-Unique: t5WTW8edMvGHpC0AAdC0zA-1
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id 1FF43D981
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 04:23:27 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id o1ctjJs9LwgQAo1ctjpitX; Wed, 24 Jun 2020 04:23:27 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-173.inter.net.il ([84.229.97.173]:40648
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1jo1cs-0039Cl-Ox
	for blinux-list@redhat.com; Wed, 24 Jun 2020 04:23:26 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 8A95E26004B
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:23:24 +0300 (IDT)
Date: Wed, 24 Jun 2020 12:23:24 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
Message-ID: <20200624122324.7900c7e8@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.173
X-Source-L: No
X-Exim-ID: 1jo1cs-0039Cl-Ox
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-173.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.173]:40648
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05O9kHBE016170
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAyMyBKdW4gMjAyMCAyMToxNjowNSAtMDQwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gRm9yIGNvbW1h
bmQgbGluZSB1c2VycyBvZiB2bGMgd2lsbCBpdCBiZSBwb3NzaWJsZSB0byBwYXVzZSBpbiBhIHJh
dGhlcgo+IGxvbmcgbXAzIGZpbGUgYW5kIHNhdmUgYSBib29rbWFyayBhdCB0aGF0IHNwb3QgdGhl
biBsYXRlciByZXR1cm4gdG8gdGhhdAo+IGJvb2ttYXJrPwo+IAoKSGkhCgpUcnkgc2VhcmNoaW5n
IGZvciAiYm9va21hcmsiICh3aXRob3V0IHRoZSBxdW90ZXMgYW5kIHdpdGhvdXQgd2hvbGUgd29y
ZHMKc2VhcmNoKSBvbiB0aGlzIHBhZ2U6CgpodHRwczovL3dpa2kudmlkZW9sYW4ub3JnL1ZMQ19j
b21tYW5kLWxpbmVfaGVscC8KCiggVW50ZXN0ZWQuICkKCj4gCj4gCj4gLS0KPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgoKLS0gCgpTaGxvbWkgRmlzaCAg
ICAgICBodHRwczovL3d3dy5zaGxvbWlmaXNoLm9yZy8KTXkgUGhvdG9zIC0gaHR0cHM6Ly93d3cu
ZmxpY2tyLmNvbS9waG90b3Mvc2hsb21pZi8KCkkgdW5kZXJzdG9vZCB3aGF0IE1vbmFkcyBhcmUg
Zm9yIDUgbWludXRlcy4gVGhlbiBJIGhhZCB0byBsZXQgZ28gb2YgdGhlCnVuZGVyc3RhbmRpbmcu
IEl0IHdhcyB0b28gaW50ZW5zZSB0byBiZSBrZXB0IGluc2lkZSBteSBoZWFkLgogICAg4oCUIEFu
IElzcmFlbGkgT3BlbiBTb3VyY2UgU29mdHdhcmUgRW50aHVzaWFzdC4KClBsZWFzZSByZXBseSB0
byBsaXN0IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHBzOi8vc2hsb20uaW4vcmVw
bHkgLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

