Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id B79921FC332
	for <lists+blinux-list@lfdr.de>; Wed, 17 Jun 2020 03:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592356105;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZQ+p7ZO83N8y+WZmv1Xqs8emfO0c15xncmWPa93K+VQ=;
	b=U2EbVDpvQxzVxTlGrwzEJ+uHPmz2kuVHtAJh2QFpS96vAw5zxUsRvEgcLjg38hS0Weli5K
	OV9rkIQWugud4nnMmyS6sLroYgzPWar9pnVBfycvVb+yrjaTQDdau8ZKAxWUVNL1Wb2D5N
	CkfJc2/Ogq+yxxumCdMr/qcnAGOy79w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-z9iEzmG7PlmL_nHf5CMyQw-1; Tue, 16 Jun 2020 21:08:23 -0400
X-MC-Unique: z9iEzmG7PlmL_nHf5CMyQw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4F9B10AEA14;
	Wed, 17 Jun 2020 01:08:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4807960FC2;
	Wed, 17 Jun 2020 01:08:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F1566180954D;
	Wed, 17 Jun 2020 01:08:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05H17pAT031607 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 21:07:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 607A5BDC5E; Wed, 17 Jun 2020 01:07:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59721B5536
	for <blinux-list@redhat.com>; Wed, 17 Jun 2020 01:07:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E066D800052
	for <blinux-list@redhat.com>; Wed, 17 Jun 2020 01:07:48 +0000 (UTC)
Received: from p3plsmtpa12-04.prod.phx3.secureserver.net
	(p3plsmtpa12-04.prod.phx3.secureserver.net [68.178.252.233]) (Using
	TLS) by
	relay.mimecast.com with ESMTP id us-mta-180-FfAmWCfqOTGkOsvk2C3mqQ-1;
	Tue, 16 Jun 2020 21:07:45 -0400
X-MC-Unique: FfAmWCfqOTGkOsvk2C3mqQ-1
Received: from [192.168.50.215] ([72.205.36.177]) by :SMTPAUTH: with ESMTPA
	id lMW6jF6RePsEClMW7jBHQ6; Tue, 16 Jun 2020 18:05:27 -0700
X-CMAE-Analysis: v=2.3 cv=H6ylPNQi c=1 sm=1 tr=0
	a=KrEcpKSwXc6ZHCuzcgfT3w==:117 a=KrEcpKSwXc6ZHCuzcgfT3w==:17
	a=IkcTkHD0fZMA:10 a=UP6rjvOCAAAA:8 a=Gbw9aFdXAAAA:8 a=kmYkUENqAAAA:8
	a=20KFwNOVAAAA:8 a=MMzCutQOOPWWy9TjJ3QA:9 a=0VWT28c_hwrPeZlR:21
	a=5XLIM6wg5v-mVBp2:21 a=QEXdDO2ut3YA:10 a=8y8Nxo0TDsEA:10
	a=WlB4zrH7Sf5rzdZDRs4j:22 a=9vIz8raoGPyDa4jBFAYH:22
	a=p9kz6gysRiz6SGr9lVkz:22
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
	<be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
	<C3FC0F8B-2F8D-47F0-A8F8-3660B1C280C1@cfcl.com>
Message-ID: <90337592-ea00-cfd5-4b27-5082d2f23cba@crosslink.net>
Date: Tue, 16 Jun 2020 21:05:26 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <C3FC0F8B-2F8D-47F0-A8F8-3660B1C280C1@cfcl.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMdJLXSKdSnxDrG94btHGZ8FVn+HfJlwmoFikMJY09NtiM+Wx+s58RiifQN/ANkWN59EwLX+9c2R0HLH1Ky952YA6EMRlwEhOxNQmwyqfwuhfPBfJF5W
	1wmvQk+nTss4v/Iv26thAYC4imSAcIyHPoQMw5ED3qXD220DW0qBIpbqERH5BWNNYaZwe5HweBeekg==
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

IMKgwqDCoCBUZXJtdXggaGFzIHNvbWV0aGluZyBjYWxsZWQgJ1BST09UJyB0aGF0IGFsbG93cyBv
bmUgdG8gdXNlIGEgCidjaHJvb3QnIGVudmlyb25tZW50IGluIHVzZXIgc3BhY2UuwqAgVGhpcyBp
biB0aGVvcnkgYWxsb3dzIHJ1bm5pbmcgTGludXggCnVuZGVyCgpzb21lIEFuZHJvaWQgcGhvbmVz
IGJ5IHVzaW5nIFRlcm11eC4KClNvbWUgbGludXggZGlzdHJpYnV0aW9ucyBzdWNoIGFzIEFyY2gs
IERlYmlhbiwgYW5kIFVidW50dSBhcmUgbGlzdGVkIGluIAp0aGUgVEVSTVVYIFdpa2kuCgpodHRw
czovL3dpa2kudGVybXV4LmNvbS93aWtpL1BSb290CgpURVJNVVggaXMgaGFyZCB0byB1c2Ugd2l0
aCBUYWxrQmFjaywgYnV0IHlvdSBjYW4gc3RhcnQgaXQgdXAuCgpUZXJtdXggaGFzIGFuICdFc3Bl
YWsnIHBhY2thZ2UuwqAgSSB3YXMgYWJsZSB0byBkbyBhICdoZWxsbyB3b3JsZCcgd2l0aCAKaXQu
wqAgWW91IGNhbiBzdGFydCBhbiBTU0ggZGFlbW9uIGFuZCB3b3JrIG9uIGl0IGZyb20gYW5vdGhl
ciBjb21wdXRlciwgCmJ1dCBpdCB3b3VsZCBiZSBuZWNlc3NhcnkgdG8gcG9ydCBhIHRleHQgYmFz
ZWQgc2NyZWVuIHJlYWRlciBpbnRvIGl0IGFzIApmYXIgYXMgSSBjYW4gdGVsbC7CoCBMaWtlIG90
aGVycyBzYWlkIHRoZSBBbmRyb2lkIEdVSSBzZWVtcyB0byBiZSBKYXZhIApiYXNlZCwgc28gSSB0
aGluayBwZW9wbGUgdXNlIGEgVk5DIGNsaWVudCBmb3IgdGhlIG91dHB1dCBvZiBYIFdpbmRvd3Mu
IEkgCmFzc3VtZSB0aGF0IHdvdWxkIG5vdCBiZSBhY2Nlc3NpYmxlLCBidXQgc29tZWJvZHkgbWF5
IGtub3cgYmV0dGVyLgoKSWYgYW55Ym9keSBoYXMgQnJsdHR5IGdvaW5nIG9uIGFuIEFuZHJvaWQg
ZGV2aWNlLCB5b3UgbWlnaHQgdHJ5IFRlcm11eCAKYW5kIHNlZSBpZiBpdCBjYW4gdHJhY2sgdGhl
IGN1cnNvci4KCgoKCk9uIDYvMTYvMjAyMCAxMjo1OSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBTb21lb25lIHNhaWQ6Cj4+IC4uLiB5b3UgbWlnaHQgYmUg
YmV0dGVyIG9mZiBzdGFydGluZyB3aXRoIGEgUmFzcGJlcnJ5IFBpIGlmIHlvdSB3YW50IGEgbW9y
ZSB2YW5pbGxhIExpbnV4L0dOVSBleHBlcmllbmNlIG9uIGEgcG9ja2V0LXNpemVkIGNvbXB1dGVy
IHRoYW4gd2hhdCBBbmRyb2lkIG9mZmVycy4uLgo+Cj4gVGhlIFJhc3BiZXJyeSBQaSBpcyBhIGdy
ZWF0IHBpZWNlIG9mIGhhcmR3YXJlLCB3aXRoIGEgdHJ1bHkgYW1hemluZyBudW1iZXIgb2YgaW50
ZXJmYWNlIG9wdGlvbnMuICBJIGZvbGxvd2VkIHRoZSBGMTIzL1ZPSVNTIGVmZm9ydCB3aXRoIGdy
ZWF0IGludGVyZXN0IGFuZCBhbSBub3cgZm9sbG93aW5nIFN0b3JtdXguICBIb3dldmVyLCB0aGUg
UmFzUGkgaXNuJ3QgYSBncmVhdCBzdGFydGluZyBwb2ludCBmb3IgYSB0cnVseSBwb3J0YWJsZSAo
aS5lLiwgcGFsbXRvcCkgY29tcHV0ZXIgc3lzdGVtLiAgU2l6ZSBhbmQgd2VpZ2h0IGlzc3VlcyBh
c2lkZSwgdGhlcmUgaXMgdGhlIHByb2JsZW0gb2YgaG93IHRvIHN1cHBvcnQgImluc3RhbnQgb24i
IGNhcGFiaWxpdHkgKGUuZy4sIGZvciB1c2UgYXMgYSBub3RldGFrZXIpLgo+Cj4gQmVjYXVzZSBt
eSBBbmRyb2lkIGNlbGwgcGhvbmUgaGFzIHBvd2VyIG1hbmFnZW1lbnQgYW5kIHNsZWVwIG1vZGUg
c3VwcG9ydCwgaXQgY2FuIHJ1biBmb3IgbW9yZSB0aGFuIGEgZGF5IG9uIGl0cyBidWlsdC1pbiBi
YXR0ZXJ5LiAgSSBoYXZlbid0IGJlZW4gYWJsZSB0byBmaW5kIGFueSByZWFzb25hYmxlIHdheSB0
byBnZXQgdGhpcyBraW5kIG9mIGJlaGF2aW9yIG9uIGEgUmFzUGkuICBFdmVuIGlkbGluZywgdGhl
IHBvd2VyIHJlcXVpcmVtZW50IG92ZXIgYSBkYXkgd291bGQgZHJhaW4gYW55IHJlYXNvbmFibGUg
c2V0IG9mIGJhdHRlcmllcy4gIEJvb3RpbmcgdGhlIGRldmljZSBhbmQgc2h1dHRpbmcgaXQgZG93
biBlYWNoIHRpbWUgSSB3YW50IHRvIHVzZSBpdCB3b3VsZCBiZSB2ZXJ5IGluY29udmVuaWVudC4K
Pgo+IEEgZmV3IGJpbGxpb24gQW5kcm9pZCBjZWxsIHBob25lcyBoYXZlIGJlZW4gbWFudWZhY3R1
cmVkIGFuZCBtb3JlIGFyZSBiZWluZyBtYWRlIGFsbCB0aGUgdGltZS4gIEFmdGVyIGEgZmV3IHll
YXJzLCB0aGVzZSBnZXQgcmVhbGx5IGNoZWFwIHRvIGJ1eSwgYmVjYXVzZSB0aGUgbGF0ZXN0IHZl
cnNpb24gb2YgQW5kcm9pZCB3b24ndCBydW4gb24gdGhlbS4gIFNvLCB3aHkgbm90IHJlcHVycG9z
ZSB0aGVtIGFzIGJsaW5kLWZyaWVuZGx5IGNvbXB1dGVycywgbm90ZXRha2VycywgZXRjPwo+Cj4g
QW5kIHRoZW4gc2FpZDoKPj4gLi4uIHVubGVzcyB0aGVyZSdzIHNvbWUgc21hcnRwaG9uZXMgb3V0
IHRoZXJlIHRoYXQgc3VwcG9ydCByZXBsYWNpbmcgdGhlaXIgc3RvY2sgQW5kcm9pZCB3aXRoIHRo
ZSBBUk0gdmVyc2lvbiBvZiBtb3JlIHRyYWRpdGlvbmFsIGRpc3Ryb3MuCj4gQW5kcm9pZCBwaG9u
ZXMgY2FuIGJlIHJlbG9hZGVkIHdpdGggZGlmZmVyZW50IGJvb3QgYW5kIE9TIGNvZGUuICBNeSBp
bml0aWFsIHBvc3RpbmcgZGlzY3Vzc2VkIHNldmVyYWwgT1MgdmFyaWFudHMgdGhhdCBzdGFydCB3
aXRoIHRoZSBvcGVuIHNvdXJjZSBBbmRyb2lkIGNvZGUsIGFsbG93aW5nIHRoZW0gdG8gdXNlIChz
b21lKSBBUEsgYXBwcyAoZS5nLiwgdGhlIEFuZHJvaWQgQWNjZXNzaWJpbGl0eSBTdWl0ZSkuCj4K
PiBUaGUgcG9zdG1hcmtldE9TIGZvbGtzIChodHRwczovL3Bvc3RtYXJrZXRvcy5vcmcpIGFyZSB0
YWtpbmcgYSBzb21ld2hhdCBkaWZmZXJlbnQgYXBwcm9hY2guICBUaGV5IGluc3RhbGwgYSBjb21w
bGV0ZSBMaW51eCBzeXN0ZW0sIGJhc2VkIG9uIEFscGluZSBMaW51eCAoaHR0cHM6Ly9hbHBpbmVs
aW51eC5vcmcpLiAgVGhlIHN5c3RlbSBjYW4ndCBydW4gQVBLIGFwcHMgeWV0LCBidXQgdGhpcyBp
cyBhIHByb2plY3QgZ29hbC4gIEZvciBkZXRhaWxzLCBzZWUgdGhlIEZBUSAoaHR0cHM6Ly9wb3N0
bWFya2V0b3Mub3JnL2ZhcS5odG1sKS4KPgo+IC0gUmljaCBNb3Jpbgo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

