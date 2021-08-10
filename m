Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 983C73E5D43
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628605109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DtABxdtdvYkKkh6PlUgkcYGd/7IC5Qx+12N4QMDBMoM=;
	b=Z3Tbs1Bj8pA5z/p3/CZelkFLB50U5GoHnDa9j4+mwqrD4yRw+4DgCDf6aumx0+87rgkgUO
	0fSOOz3gOMwlBSq3jL1hg3dYYY94od3DrcXNxUG3akeWyEyrBrphpKmyBQQ463s0d7Ttb2
	DoAM5yrksQOie1RPDfFQj1Zm+1z4Fx8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-BYOmLQhXNhenuDoqQ72aQQ-1; Tue, 10 Aug 2021 10:18:28 -0400
X-MC-Unique: BYOmLQhXNhenuDoqQ72aQQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3300D100E423;
	Tue, 10 Aug 2021 14:18:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1322460BF1;
	Tue, 10 Aug 2021 14:18:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 966CA4A7C8;
	Tue, 10 Aug 2021 14:18:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEHAoS032375 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:17:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A1C310130F4; Tue, 10 Aug 2021 14:17:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05B8C1011012
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:17:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EDEF858F1E
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:17:06 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-480-uJ54N0ZOO9aRJ_FXbx8B9Q-1;
	Tue, 10 Aug 2021 10:17:04 -0400
X-MC-Unique: uJ54N0ZOO9aRJ_FXbx8B9Q-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 71DF6A1CDF
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:16:56 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
Message-ID: <9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
Date: Tue, 10 Aug 2021 16:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRJyWYpNsgGZW1De@abilitiessoft>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AEHAoS032375
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSm9obiwKCkkgZG9uJ3QgdGhpbmsgYW55b25lIGhlcmUgd2lsbCBtYXJrIHlvdSBhcyBhIGZv
b2wsIGNlcnRhaW5seSBub3QgbWUuCgpIYXZpbmcgb25lIHN5c3RlbSBwYXIgbWFjaGluZSBpcyBj
ZXJ0YWlubHkgYSB0cm91YmxlIGZyZWUgc29sdXRpb24uCgpBbm90aGVyIG9uZSBpcyB0byBoYXZl
IGVhY2ggc3lzdGVtIG9uIGEgc2VwYXJhdGUgZHJpdmUgKG9uZSBiZWluZyAKcG9zc2libHkgcmVt
b3ZhYmxlKQoKT3IgZHVhbCBib290LCBpZiB0aGVyZSBpcyBlbm91Z2ggc3BhY2Ugb24gdGhlIGRy
aXZlIGFuZCB0aGUgbWFjaGluZSAKYm9vdHMgaW4gRUZJIG1vZGUuCgpJIHRha2UgdGhpcyBvY2Nh
c2lvbiB0byB0ZWxsIHlvdSB0aGF0IFNsaW50IHRoYXQgSSBtYWludGFpbiBpcyBmcmVlIGZvciAK
cGVvcGxlIG1lZXRpbmcgYWxsIHRoZSBjb25kaXRpb25zIGxpc3RlZCBiZWxvdzoKMS4gU21hcnQK
Mi4gTGludXggZGV2ZWxvcGVyCjMuIEJsaW5kCjQuIERlYWYKNS4gQXQgbGVhc3QgMk8geWVhcnMg
b2xkZXIgdGhhdCB0aGUgU2xpbnQgbWFpbnRhaW5lci4KSGludDogSSBhbSA3MiB5ZWFycyBvbGQK
ClNvLCBJJ2QgYmUgZ2xhZCB0aGF0IHlvdSB0cnkgU2xpbnQgYW5kIGdpdmUgdXMgYSBmZWVkYmFj
ay4gPHNtaWxlPgoKQWxsIHlvdSBuZWVkIHRvIGtub3cgc2hvdWxkIGJlIGluIG91ciBoYW5kYm9v
azoKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbAoKUGxlYXNlIGxldCB1cyBrbm93
IGFsc28gaG93IHRvIGVuaGFuY2UgU2xpbnQgYW5kIGl0cyBkb2N1bWVudGF0aW9uLgoKV2FybSBy
ZWdhcmRzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgoKTGUgMTAv
MDgvMjAyMSDDoCAxNDozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IFdlbGwsIHRoaXMgd2lsbCBwcm9iYWJseSBtYXJrIG1lIGFzIGEgZm9vbCwgYnV0
IEkganVzdCB1c2UgYSBMaW51eCBtYWNoaW5lIGFuZCBhIFdpbmRvd3MgbWFjaGluZSBjb25uZWN0
ZWQgYnkgU2FtYmEuCj4gQ29tcHV0ZXJzIGFyZSByZWxhdGl2ZWx5IGluZXhlbnNpdmUgbm93LCBz
byB3aHkgYm90aGVyIHdpdGggdmlydHVhbCBtYWNoaW5lcz8KPiAKPiBKb2huCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

