Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8E832400C83
	for <lists+blinux-list@lfdr.de>; Sat,  4 Sep 2021 20:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630779749;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/YeSY/5mMxnC0Fv6YhA6rBSKsAaS7hL6kCYq9Kazj3E=;
	b=UzkOEX9amXEc0akWMOJpWC22cLDRdVaLq8vO1ehtJp+ROLFqlDtUYhiDEw2aGI0fLiA07s
	Ibo7nRUsmeuYDhBdB6epuz0vyOJ2RUdgr+IBC77TzrzYcKKxPHWfKJ9348HtxiRd0QhBK2
	yYxfwhVBHyY+RTSLTE+Mj3yGWhEKeik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-RMzDV5GyOuWgjYlOHM0dkA-1; Sat, 04 Sep 2021 14:22:27 -0400
X-MC-Unique: RMzDV5GyOuWgjYlOHM0dkA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E988F1854E20;
	Sat,  4 Sep 2021 18:22:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B82C604CC;
	Sat,  4 Sep 2021 18:22:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4365E4EEA1;
	Sat,  4 Sep 2021 18:22:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 184IArjC028409 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Sep 2021 14:10:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2549047CC8; Sat,  4 Sep 2021 18:10:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FFD363F2D
	for <blinux-list@redhat.com>; Sat,  4 Sep 2021 18:10:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFF9F101CC60
	for <blinux-list@redhat.com>; Sat,  4 Sep 2021 18:10:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-578-xXx7r7gyN0CTJVNVyyoUDg-1;
	Sat, 04 Sep 2021 14:10:47 -0400
X-MC-Unique: xXx7r7gyN0CTJVNVyyoUDg-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C3BA1A009F;
	Sat,  4 Sep 2021 18:10:31 +0200 (CEST)
Message-ID: <13f89f80-faf3-b3be-2865-a2158062eede@slint.fr>
Date: Sat, 4 Sep 2021 20:10:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.0.3
Subject: Re: Reading html email using mutt
To: blinux-list@redhat.com
References: <a70dce4a-80e4-5d36-477a-8f950aee8f3c@gmail.com>
In-Reply-To: <a70dce4a-80e4-5d36-477a-8f950aee8f3c@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 184IArjC028409
X-loop: blinux-list@redhat.com
Cc: Philippe DELAVALADE <philippe.delavalade@orange.fr>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKSSB0cmFuc21pdHRlZCB5b3VyIHF1ZXN0aW9uIHRvIFBoaWxpcHBlIERlbGF2
YWxhZGUgKHRoZSBmaXJzdCBldmVyIFNsaW50IAp1c2VyCndpdGggQnJhaWxsZSBieSB0aGUgd2F5
KSwgYW5kIEkgZm9yd2FyZCB5b3UgaGlzIGFuc3dlciwgdHJhbnNsYXRlZCB0byAKRW5nbGlzaC4K
CkkgYXNzdW1lIHRoYXQgeW91IGNvdWxkIHJlcGxhY2UgbHlueCB3aXRoIHczbSBpbiBoaXMgYW5z
d2VyLgoKQ2hlZXJzLApEaWRpZXIKClBoaWxpcHBlJ3MgbWVzc2FnZSBiZWxvdzoKCkhpIERpZGll
ci4KCkZpbmFsbHkgSSBoYXZlIGEgZmV3IG1pbnV0ZXMgZnJlZSB0byBhbnN3ZXIgeW91LgoKSW4g
dGhlIC5tdXR0cmMgZmlsZSBJIGhhdmUgdGhlIGxpbmUgOgpzZXQgbWFpbGNhcF9wYXRoPSJ+Ly5t
YWlsY2FwIgoKSW4gLm1haWxjYXAgSSBoYXZlIHRoZXNlcyB0d28gbGluZXMgOgp0ZXh0L2h0bWw7
IC91c3IvYmluL2x5bnggLWZvcmNlX2h0bWwgJyVzCmFwcGxpY2F0aW9uL3hodG1sK3htbDsgbHlu
eCAtZm9yY2VfaHRtbCAnJXMnCgpPdGhlcndpc2UsIGluIHByYWN0aWNlLCBvbmNlIHRoZSBtZXNz
YWdlIGlzIG9wZW5lZCB3aXRoIG11dHQsIHdlIHByZXNzICd2JywKd2l0aCB0aGUgdXAvZG93biBh
cnJvd3MgeW91IHNlbGVjdCB0aGUgaHRtbCBwYXJ0IChvciB0aGUgbXVsdGlwYXJ0IGlmIAp0aGVy
ZSBpcwpub25lKSwgdGhlbiB5b3UgcHJlc3MgJ20nIGFuZCBseW54IG9wZW5zIGFuZCB5b3UgcmVh
ZCBrbm93aW5nIHRoYXQgdGhlIApjdXJzb3IKaXMgcGxhY2VkIG9uIHRoZSBsaW5rcwoKbGF0ZXIs
CgotLQpQaGlsaXBwZQoKTGUgMDQvMDkvMjAyMSDDoCAxNzoyOCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIGFsbCwKPiAKPiAKPiBJIHNldCB1cCBt
dXR0IGFzIGluc3RydWN0ZWQsIHNldmVyYWwgZGlmZmVyZW50IHNvdXJjZXMsIGFuZCB3aGVuIHJl
YWRpbmcgCj4gbWFpbCwgSSBmaW5kIG1hbnksIGlmIG5vdCBtb3N0IG1lc3NhZ2VzIGZ1bGwgb2Yg
SFRNTCB0YWdzLgo+IAo+IAo+IFNvbWVvbmUgdG9sZCBtZSB0byBwaXBlIHRoZSBtZXNzYWdlcyBm
cm9tIG11dHQgdG8gdzNtLCBidXQgSSBjYW5ub3QgZmluZCAKPiBpbnN0cnVjdGlvbnMgb24gaG93
IHRvIGRvIHRoaXMgYW55d2hlcmUuCj4gCj4gCj4gSWYgc29tZW9uZSBjYW4gcGxlYXNlLCBlaXRo
ZXIgcmVmZXIgbWUgdG8gYSBzb3VyY2UsIG9yIGFzc2lzdCBtZSB3aXRoIAo+IHRoZSBjb3JyZWN0
IHN5bnRheCB0byBkbyB0aGlzLCBJIHdvdWxkIGJlIGdyYXRlZnVsLgo+IAogPiAtLQogPiBXYXJt
IHJlZ2FyZHMsCiA+CiA+IEJyYW5kdCBTdGVlbmthbXAKID4KID4gU2VudCB1c2luZyBUaHVuZGVy
YmlyZCBmcm9tIHRoZSBTbGludCBMYXB0b3AKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

