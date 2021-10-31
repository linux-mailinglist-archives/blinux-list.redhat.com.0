Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2484410DB
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 21:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635713603;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=68skEtesx2BSRptMyoAjK5haxlwQ3ec3b14Y+27L2Zc=;
	b=SsOCVtoWe7Fs0c81L+INZWDGK7OVJV33/GsSPRC2cGwwpt6uC016dWfVVNqVbPMLmWFEth
	3x1RC4l95WlMkm2hkZ6LOgXc1t/85T0qB8T3NN/MPIoM9PIqPhJg2KiGwbodb6SVC5Smf5
	vwrFE8FdqFjjS2vatuLFz1ra3FnYC08=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-ZOh7bXBAM8aTRqREYri3xQ-1; Sun, 31 Oct 2021 16:53:19 -0400
X-MC-Unique: ZOh7bXBAM8aTRqREYri3xQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E12FD802C80;
	Sun, 31 Oct 2021 20:53:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3604419C59;
	Sun, 31 Oct 2021 20:53:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9F0C1809C84;
	Sun, 31 Oct 2021 20:53:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VKr5sC032628 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 16:53:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 181DB2156713; Sun, 31 Oct 2021 20:53:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 126A82156712
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 20:53:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3629F8001EA
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 20:53:02 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-474-rqBQ15rkPWKEbzWiBuePPA-1;
	Sun, 31 Oct 2021 16:53:00 -0400
X-MC-Unique: rqBQ15rkPWKEbzWiBuePPA-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9748CA1CD6
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 19:52:26 +0100 (CET)
Message-ID: <50d09d20-4d9b-d41f-dbf4-056b35c0e18f@slint.fr>
Date: Sun, 31 Oct 2021 21:52:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Beginner's Guide To The Linux Terminal
To: blinux-list@redhat.com
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
	<595ba88d-5366-2157-fcdf-c647ab1f4ea1@hubert-humphrey.com>
	<Pine.LNX.4.64.2110311511350.28925@server2.shellworld.net>
	<alpine.NEB.2.23.451.2110311630510.29047@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2110311630510.29047@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VKr5sC032628
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Rm9yIFNsaW50OgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI0FjY2Vzc2liaWxp
dHkKCgpMZSAzMS8xMC8yMDIxIMOgIDIxOjQxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gQ2VydGFpbiBkaXN0cmlidXRpb25zIGhhdmUgYWNjZXNzaWJp
bGl0eSBwYWdlcywgY2VydGFpbmx5IHNsaW50IGhhcyBhbgo+IGFjY2Vzc2liaWxpdHkgcGFnZS4g
IEFjY2Vzc2liaWxpdHkgcGFnZXMgdmFyeSBpbiBxdWFsaXR5IGZyb20gZGlzdHJpYnV0aW9uCj4g
dG8gZGlzdHJpYnV0aW9uLiAgU2xpbnQ7IGRlYmlhbiwgdWJ1bnR1LCBGZWRvcmEgYXJlIGhpZ2gg
cXVhbGl0eS4KPiBBcmNobGludXggaXMgbmVhciBoaWdoIHF1YWxpdHkuICBHZW50b28gbmVhciBt
ZWRpdW0gcXVhbGl0eSBhbmQgSSdtIGJlaW5nCj4gZ2VuZXJvdXMgaGVyZS4gIE1hbmphcm8gYW5k
IG90aGVycyBhcmUgcmVhbGx5IGRvZGdleSwgc29tZSBvZiB0aGVtIGNhbm5vdAo+IGJlIGluc3Rh
bGxlZC4gIEtERSBwbGFzbWEgZGVmYXVsdCBkaXN0cmlidXRpb25zIGNhbm5vdCBiZSBpbnN0YWxs
ZWQgc2luY2UKPiB0aG9zZSBkaXN0cmlidXRpb25zIHVzdWFsbHkgZG9uJ3QgaGF2ZSBvcmNhIG9u
IHRoZSBpbnN0YWxsYXRpb24gaXNvcy4KPiBUaGUgYWNicmFkaW8ub3JnIGhhcyBzY2F0dGVyZWQg
dGhyb3VnaG91dCBpdHMgbWFpbiBtZW51IGZpbGVzIGluc3RhbmNlcyBvZgo+IHN1Y2Nlc3NmdWwg
TGludXggaW5zdGFsbGF0aW9ucyB3aXRoIHVzZSBvZiBzY3JlZW4gcmVhZGVycyBhbmQgbmFycmF0
aW9uLgo+IE9mIGNvdXJzZSBpZiB5b3VyIGRpc2FiaWxpdHkgZG9lc24ndCBuZWVkIG9yIHVzZSBh
IHNjcmVlbiByZWFkZXIgdGhlc2UKPiB3aWxsIGJlIG9mIG5vIGhlbHAuCj4gCj4gT24gU3VuLCAz
MSBPY3QgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiAK
Pj4gLi4uYW5kIHlvdSBuZWVkIHRvIGhhdmUgYWNjZXNzIHRvIFlvdVR1YmUgYXQgYWxsLgo+PiB3
aGF0IGFsc28gaW50ZXJlc3QgbWUgaGVyZSBpcyB0aGF0IHRoZXNlIHJ1bGVzIG9ubHkgYXBwbHkg
dG8gc29tZQo+PiBkaXN0cmlidXRpb25zLgo+PiBTbywgeW91IGFyZSBuZXdseSBtYW5hZ2luZyBh
IGRpc2FiaWxpdHkgY29uZGl0aW9uLCBhbmQgaGF2ZSBoZWFyZCBhYm91dCBMaW51eC4KPj4gd2hl
cmUgYXJlIHlvdSBnb2luZyB0byAgb2JqZWN0aXZlbHkgZ2V0IHRoaXMga2luZCBvZiBkYXRhPwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

