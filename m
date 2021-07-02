Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 38C433BA453
	for <lists+blinux-list@lfdr.de>; Fri,  2 Jul 2021 21:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625253455;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ivYQKUcUViYaf3ueIZGKWch3EpVGFeAyXlnPD+aTc8E=;
	b=XMYrv8JGLH81ENu2hLYQW0CFjhLOowH5gt71Lj+raKAYf7m+3dYoZautHCMZJudVOcmIjH
	bsf3eqQ7nJT1FoSIEr/ETica+SwaAjXRUwl1lN+zfRFXCANREd24SyZ9HMGsDCupNTeDR1
	FzD1PqirCzsF89y2KoMmvjvtkgvbpZE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-Wp1x356ZN5KKlM8Rg2VGPg-1; Fri, 02 Jul 2021 15:17:31 -0400
X-MC-Unique: Wp1x356ZN5KKlM8Rg2VGPg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 937B479EF2;
	Fri,  2 Jul 2021 19:17:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 092BA620DE;
	Fri,  2 Jul 2021 19:17:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E51B4A712;
	Fri,  2 Jul 2021 19:17:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 162JHHdM028792 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Jul 2021 15:17:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A8F010BFD97; Fri,  2 Jul 2021 19:17:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 663F710BFD9A
	for <blinux-list@redhat.com>; Fri,  2 Jul 2021 19:17:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 076FD1064E69
	for <blinux-list@redhat.com>; Fri,  2 Jul 2021 19:17:15 +0000 (UTC)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de
	[80.67.18.14]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-54-OYlHDAGzO3CwrwQ2C3OxJw-1; Fri, 02 Jul 2021 15:17:12 -0400
X-MC-Unique: OYlHDAGzO3CwrwQ2C3OxJw-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay02.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lzOea-0001tM-Nq
	for blinux-list@redhat.com; Fri, 02 Jul 2021 21:16:44 +0200
Subject: Re: Interesting arch issue
To: blinux-list@redhat.com
References: <087a01d76f74$4fc8ad00$ef5a0700$@gmail.com>
Message-ID: <4681dcd6-7e0b-ff99-b515-52c415cdb377@linux-a11y.org>
Date: Fri, 2 Jul 2021 21:17:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <087a01d76f74$4fc8ad00$ef5a0700$@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgptYXliZSB0aGlzIGlzIGJldHRlciBwbGFjZWQgb24gYW4gQXJjaExpbnV4IGxpc3Qg
dGhhbiBoZXJlIDopLgoKd2l0b3V0aCBrbm93IHlvdXIgc3lzdGVtLCBpIGhhdmUgYW4gZ3Vlc3Mu
CmlmIHlvdSBleGFjdGx5IHR5cGUgd2hhdCB5b3Ugc2VuZCBwZXIgbWFpbCB0aGVuIHlvdSBtaXNz
ZWQgc29tZSAKcGFyYW1ldGVyICgtbyB0byBzcGVjaWZ5IHRoZSBvdXRwdXQgZmlsZSkgaW7CoCBn
cnViLW1rY29uZmlnCiQgZ3J1Yi1ta2NvbmZpZyAtbyAvYm9vdC9ncnViL2dydWIuY2ZnCgpqdXN0
IGFuIGd1ZXNzCgpjaGVlcnMgY2hyeXMKCkFtIDAyLjA3LjIxIHVtIDIwOjU4IHNjaHJpZWIgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIaSBhbGwsCj4KPiAgIAo+Cj4gSSBo
YXZlIGluIHRoZSBwYXN0IGluc3RhbGxlZCBBcmNoIHN1Y2Nlc3NmdWxseSwgYnV0IG5vdywgZm9y
IHNvbWUgdW5rbm93bgo+IHJlYXNvbiBldmVyeSB0aW1lIEkgZG8gc28gYnkgaGFuZCwgQUtBICJ0
aGUgYXJjaCB3YXkiLCBzb21ldGhpbmcgaXMgd3JvbmcKPiB3aXRoIG15IGdydWIgYW5kIHNlZWlu
ZyB0aGF0IEkgYW0gYXQgdGhlIG1vbWVudCBpbnN0YWxsaW5nIGluICJWTXdhcmUKPiBXb3Jrc3Rh
dGlvbiAxNiBQbGF5ZXIiIGZvciB3aW5kb3dzLCBJIGNhbm5vdCBib290IGJhY2sgaW4gdG8gaW5z
dGFsbGF0aW9uCj4gbWVkaWEgdG8gcmVwYWlyIGdydWIuCj4KPiAgIAo+Cj4gU2VlaW5nIHRoYXQg
SSBhbSBpbnN0YWxsaW5nIGZvciBiaW9zIGJvb3QsIEkgZG8gdGhlIGZvbGxvd2luZy4KPgo+ICAg
Cj4KPiAkIHBhY21hbiAtU3kgZ3J1Ygo+Cj4gJCBzdWRvIGdydWItaW5zdGFsbCAtdGFyZ2V0PWkz
ODYtcGMgL2Rldi9zZGEKPgo+ICQgZ3J1Yi1ta2NvbmZpZyAvYm9vdC9ncnViL2dydWIuY2ZnCj4K
PiAgIAo+Cj4gSWYgSSBhbSBkb2luZyBzb21ldGhpbmcgd3JvbmcgaGVyZSwgcGxlYXNlIGhlbHA/
Cj4KPiAgIAo+Cj4gU29tZWhvdyBJIGdvdCBBcmNoIGluc3RhbGxlZCB1c2luZyBhcmNoZmksIHRo
b3VnaCBJIGZpbmQgdXNpbmcgdGhhdCBzY3JpcHQKPiB0byBiZSBhIHBhaW4sIGJlY2F1c2UgaXQg
ZG9lcyBub3QgaW5zdGFsbCBhY2Nlc3NpYmlsaXR5IHRvb2xzIHN1Y2ggYXMKPiBlc3BlYWt1cCwg
T3JjYSBhbmQgZXNwZWFrLiBJIGFsc28gZm91bmQgdGhhdCB0aGUgc291bmQgZGlkbid0IHdvcmsg
dW50aWwgSQo+IHJlaW5zdGFsbGVkIGFsc2EgYW5kIGFsc2EtdXRpbHMuCj4KPiAgIAo+Cj4gV2Fy
bSByZWdhcmRzLAo+Cj4gICAKPgo+IEJyYW5kdCBTdGVlbmthbXAKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

