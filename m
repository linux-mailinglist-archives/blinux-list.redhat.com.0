Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E1ED73E5AB8
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 15:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628600937;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=045/KYB51luxYp5bLQ4lenRCw4rwQS9esSB0yyhHbEw=;
	b=i+bOBx2WphX05k7wUoj/DZ2IezrxO5gsORKgVTiVl89ArrwxboUbsFBAApwOo7XecPTmkx
	WXUXknGu23zUHry/bB0nhdVHteTvyJb7CT4oNobPXj1K+AIqC6cbJrfPY99AHqPotpfQoT
	EWeU5zDJ+v/QJVc5FSshSJ3eO0mXNdg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-A7WvJRqhOomvAogHW6T5WA-1; Tue, 10 Aug 2021 09:08:55 -0400
X-MC-Unique: A7WvJRqhOomvAogHW6T5WA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3CCAD100806B;
	Tue, 10 Aug 2021 13:08:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E97C569321;
	Tue, 10 Aug 2021 13:08:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEFB4181A0F1;
	Tue, 10 Aug 2021 13:08:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AD6m36014517 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 09:06:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EA6D820341D1; Tue, 10 Aug 2021 13:06:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6331203397C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 13:06:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E63689B841
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 13:06:43 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-440-pG_uOfOWOOWnrGHXtkltfA-1;
	Tue, 10 Aug 2021 09:06:41 -0400
X-MC-Unique: pG_uOfOWOOWnrGHXtkltfA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0FB8BA1CC3
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 13:06:32 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
Message-ID: <6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
Date: Tue, 10 Aug 2021 15:06:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AD6m36014517
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKSSB3aWxsIGF0dGFjaCB0byBteSBuZXh0IG1lc3NhZ2UgYSBzY3JpcHQgdGhh
dCBzZXRzIHVwIGEgcWVtdSBWTQphbGxvd2luZyB0byBpbnN0YWxsIHRoZW4gcnVuIFdpbmRvd3Mg
bGF0ZXIgdG9kYXkgYWZ0ZXIgbW9yZSB0ZXN0aW5nLgoKSXQgc2hvdWxkIGJlIHVzYWJsZSBpbiBh
bnkgTGludXggZGlzdHJpYnV0aW9uIHdpdGggYSByZWNlbnQgcWVtdSBpbnN0YWxsZWQuCgpDaGVl
cnMsCgpEaWRpZXIKCgpMZSAxMC8wOC8yMDIxIMOgIDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgYWxsLAo+IAo+IAo+IEFzIEkgc3RhdGVk
IGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dldmVyIG15
IAo+IHdvcmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVudHMsIG9idmlvdXNseSBydW5u
aW5nIFdpbmRvd3MuCj4gCj4gCj4gVGhlcmVmb3IgSSBkZXNwZXJhdGVseSBuZWVkIGEgV2luZG93
cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmluZy4gSSAKPiBjYW5ub3QgZmlndXJlIHFlbXUsIHZp
cnR1YWwtYm94LCBJIGhhdmUgbm8gaWRlYSwgYW5kIFZNV2FyZSBXb3Jrc3RhdGlvbiAKPiBQbGF5
ZXIgZG9lc24ndCB3YW50IHRvIGluc3RhbGwgdW5kZXIgU2xpbnQuCj4gCj4gCj4gQ291bGQgc29t
ZW9uZSBwbGVhc2UsIHBsZWFzZSwgZ2l2ZSBtZSBjb25jaXNlIGluc3RydWN0aW9ucyBmb3Igc2V0
dGluZyAKPiB1cCBhIFZNIHVzaW5nIHFlbXUgaW4gU2xpbnQ/Cj4gCj4gCj4gV2FybSByZWdhcmRz
LAo+IAo+IAo+IEJyYW5kdCBTdGVlbmthbXAKPiAKPiAKPiBTZW50IGZyb20gbXkgZ2FzcyBwb3dl
cmVkIFNsaW50IGhhaXIgZHJ5ZXIuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

