Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8706B3D2653
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 17:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626966010;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zt56iDyXxp7pa2gloTL9IGy4JEcYvg1fm2l5y7XH9bU=;
	b=awf/2VYzquwe3ZvfR6a0FoeULB1n1PIiPNBvrOzCFqbomqg5lJlCTo/hL4SFBv16UTYzlM
	xgRdSxGLspE5r0THh2gH3AK6Rpc/F3qxhoaIrkrkr2lBafRX3ZQpbL72JdDr5NLRJObYg6
	bYNAwfGQia3zGpFb61G/+Ay0XtsAExU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-mmyFAKyGNdalrqrucnQ-yA-1; Thu, 22 Jul 2021 11:00:08 -0400
X-MC-Unique: mmyFAKyGNdalrqrucnQ-yA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEA9A100F769;
	Thu, 22 Jul 2021 14:59:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F2EF5D6B1;
	Thu, 22 Jul 2021 14:59:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CF4B180BAB1;
	Thu, 22 Jul 2021 14:59:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MExcdY016410 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 10:59:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7E9EB10728E; Thu, 22 Jul 2021 14:59:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 799BA10728F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:59:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D9F180B71F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:59:35 +0000 (UTC)
Received: from sonic307-55.consmr.mail.gq1.yahoo.com
	(sonic307-55.consmr.mail.gq1.yahoo.com [98.137.64.31]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-102-SdTZZ1xbObWMKx8RFw4CFg-1;
	Thu, 22 Jul 2021 10:59:32 -0400
X-MC-Unique: SdTZZ1xbObWMKx8RFw4CFg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1626965971; bh=jtiOHTzS6CBTT4SbwI0N4rI6IxXOEpwbHnklCu1lFY3=;
	h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
	b=Liv0Kn+JRToIgaS+l5xhvO7exlpyTLCm3Wt1QHFsOinkFCu0fxdkjjuHskFp/Qrbpke4KqDhF+5L8A3yIawE9bmw+EIZovnLo5ZtbvA/wwhV789NmjCob7h+lL28GGytkSDGBuezLpEaL9iBalsqmzROJsJfxoDQFBOm551s35ykKGhAy4b5dKiZK6u5BQQK1EqitZm28JuOGMXvEEKzCBzRYULbDOFRX8qqVsBvHfjRDR2A0SYg90Dk858fqR2tKszDDoAvLsE4wPpWya0tBADLerk9AfcVU05tCz2gyXnXKzrJOZVDhzw1E3nMxYu+0eOPrX2fPTTRUBBnI9LEbg==
X-YMail-OSG: YS8Ct1AVM1m0O8JjFSY3BsAB5327J_9d2di8Fsj90UrsfJadHgzUq1sh0HIdtfS
	0rjU7_nhRd3qf9zAAz3ve9Ya8WilAAz5_.XssH68uqtP7cGR2Bj_GcTg4JDXogZVFct0CmqW1b4R
	GrLQF2N68wWpIEKqDTJ.NA57xWliI4ZNNa1zSjkEj9nIMJ6HSWAVzh.2qiisRPs3fu8z2FkSpLIj
	xJNlwr81YJ7c78eXePfJq.HVI1d..C6H9852khEMBw2On8igYy58LktL0ciUvwVqI9x1.Txh9ptu
	hZZKfxarxY8IUszIXPgXuxSitkrqc7mTdiSeADaz5JBI81EuErKirg545fdE_jRK9YQgA_F3mVPu
	Ul7O4OLKa7APdqol84Wj1.BffVwMW05KqzB10QXZMxwZjUVXqztVl4Ig_EXlXenDqqKyuxN_aTZ2
	KiV8DFbYfiLohS3cpAFiD2xNSHq1DRLz2Q8J2rgX.XUoMhZDQVxJMuaJtv5FMFLYAEvK8990ji.O
	0FVN2UzBoEmEtXSUP3Pgq1zF4aaZvJoHcQNfC5AjVPvANr7NcEC2S.9sfnCmzjy7MR_BT8KoA__a
	1ddAq3kfbBEjB8KGamsNkIwYyONIxlryVNBDWjxjkiTGaE515gqgSLCVwEHlbnr8bAzWZD25E9Ph
	MHKtV0pHRq2sMLEFIADwChc9Hqu38jFrhennv2j5BM65_0dbDaL5yG9TqZyYDc5lVz.xjvQ5ulfj
	GgNoOPJanZkQGgQ2ceNE_5iFW4yzs2KNVkBDnao3rQTcXRgX0k2v13kxTx0C5WjBtnJXAuMOTlvE
	i1CluvNyuQBuKtg75w7NwtStiSxTspyfe994t3.3feCQuxyH0VXBH3pz_7cgTDZQyh8Qfcj5UuDv
	_bpz5VLK9juzGx8HJMW0SR4CResFncUAY2S87jaZADcIhQSFrZ4V8udlbkeShgi6gvRK2Os7BDZ5
	YDBefnbPOjWUkCRv5PpXsQHhrIWkx4NWSL64nOTUGs_MLpNwXpDqq3i55X9IAUGNwdJylobsqihy
	VWjc3VCg2iADMviBXUVupqrm3GGRU57kZC9JPT6_BwRQrf70mIzXXk1D5kE4uRgnDLzKyzWqNi1q
	yqrS9JusYiOcfrLvrudAWlbh_.SFzVy60aPvP8JOldlaVuEaJo29bs80913VdCHBulR2HZ9HZS0n
	zdqgBu.RP5a2AVCAbIijGoXKuQc19Fsfm3d8sw1xPtOT1UVpbKAU4Yc9S5cDvmGhFgkJ7Rcpzqie
	uIe6_O70sTAI1eyz1htba9ZfGt2SxLaTnjqlX_otENl9BddlXFyMDTmFMLMcexGNb8S2y4UH3R7T
	y3Zg32WrZaHiDsqpipaSK1PmoHwm.vqD4ysdXQSwknqSVMPQk_asc3cLcH6v8OWVaXSAYHwNjjEU
	QPZPojuYWqYwgM_4.mdK36.h2Mo6FZ3UlmfZokfcmnpfKTGEt44xhkNDaAzenXDNvxrPJikJmex_
	I7BrVpHrK0Lbbi6sPNHuJg7Yqmp3P._mCjog3es8.uhLm9eSOIaHgT6qyVLWfCjj.uVLWqRr9o0x
	7oNVNlqd2aDUmqjdgXYy8p9FX9lwgIyQeHANqsL3Z5e.XgPR4SOxusiua14ChX_6Y6zHPjU.I8DA
	Dpzor22dOPoebO5dVmRy0vkHg14sTFXAn619IhR3A72vZGOkwzNjEYMHz8_Qjy8nhnWM7bLytoiv
	1IQiwAk.cQjJ.I_gOk0qLJUlt8KWYV0FIuLMt7gTDRPu83ROZpuhmdw3pgdXkuHmWTRwN0ZpZ_LJ
	hYzlS5VwurH1DjaFTcBfEwOjpwWvwslFi2aeI.i6DEWf_z_Zp.yTTBwB1NrLzwaNxU81XlCsmtcY
	5HEqHE5Nv8.UhNLS_6C_0xmxfHXjS.PRj0Rax.qLLzrKHx1H4xqPM3MSivWXAjn3iQtn5u3btt6N
	3Qhfq8DMHKKDuRQtZx6f710.VSN_ubN_xV_7PkbuX1vl2Mu7lX6EzUjnK3lVQ18qXyTRRu46U8im
	qEsgYjlME.QpuBjyzqKrXrz9AThMfKjo0HlMVxWnzfNtVEz7ZNyL4U_yx5EuSNHkC6s4XpJpXx8p
	9uOh1R0EkqJi4rtRb51AhvL4IxoSCvpLnOEqmSeNyzVQ8JN6.3RGLiTbEmDqVIZZm9if_51972NC
	dUDSIMOON357pGHloUaAF1h3ckIQ.cUrt8f24nDfx7wQzUhHzdtZq5J.OtfUfEFsZ4H6uNC40Lb.
	Xpof4ok6eVz6QczrkNCRzrkQo7VBNjAR_K2krHuIl0TyGenz2Qg2etVyi_gMkt5026ivHu.v2.rz
	VVJjYZu9REKVbklBpKnxSI5RxTF_pRSoOSY.Cxa0zUY9Nw0EBN802aa0uYXAcCsxLFRlPMDiCUgW
	pofi3qGr0l1Qx
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.gq1.yahoo.com with HTTP;
	Thu, 22 Jul 2021 14:59:31 +0000
Received: by kubenode577.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID aad36268009c25730a0fee2a45e791c1; 
	Thu, 22 Jul 2021 14:59:26 +0000 (UTC)
Subject: Re: Thunderbird on Slint
To: blinux-list@redhat.com
References: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
	<0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
Message-ID: <5f80b66c-7aa3-07cf-d323-344373699b39@verizon.net>
Date: Thu, 22 Jul 2021 10:57:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

SGksIERpZGllci4KCgpRdWljayBxdWVzdGlvbjrCoCBzaW5jZSBJIGluc3RhbGxlZCBhIHZlcnNp
b24gb2YgVGh1bmRlcmJpcmQgYWNjb3JkaW5nIHRvIAp0aGUgaW5zdHJ1Y3Rpb25zIHlvdSBsaW5r
ZWQgdG8gbGFzdCB3ZWVrLCBkbyBJIHN0aWxsIG5lZWQgdG8gdXNlICItcCAKYWxsb3ctZG93bmdy
YWRlIiB0byBicmluZyBpdCB1cCBhZnRlciBhIG5ldyBpbnN0YWxsP8KgIChJIGhvcGUgSSB3cm90
ZSAKdGhhdCByaWdodCwgYXMgSSBkaWQgaXQgZnJvbSBtZW1vcnkuKQoKClRoYW5rcyEKCgpBbAoK
Ck9uIDcvMjEvMjEgMzo1NyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIaSBCcmFuZHQsCj4KPiBzaG9ydCBhbnN3ZXI6Cj4gaHR0cDovL3NsYWNrd2FyZS51
ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL3Rlc3RpbmcvUkVBRE1FCj4KPiBEaXNjYXJkIHRo
ZSBjb21tZW50IGFib3V0IFNwZWVjaCBEaXNwYXRjaGVyLCBhIGZhaXJseSByZWNlbnQKPiBvbmUg
aXPCoMKgwqDCoCBhbHJlYWR5IGluIFNsaW50Lgo+Cj4gTW9yZToKPiBodHRwczovL3NsaW50LmZy
L2RvYy8KPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4KPiBMZSAy
MS8wNy8yMDIxIMOgIDA4OjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4KPj4KPj4gSSBqdXN0IGNoZWNrZWQgdGhlIHZlcnNpb24g
b2YgVGh1bmRlcmJpcmQgaW4gc2xpbnQsIGFuZCBJIHNhdyBpdCBpcyAKPj4gYWJvdXQgMTAgdmVy
c2lvbnMgb3V0IG9mIGRhdGUuIElzIHRoZXJlIGEgd2F5IHRvIGdldCBhIG5ld2VyIHZlcnNpb24g
Cj4+IG9mIHRoZSBzb2Z0d2FyZT8gSSBrbm93LCBJIGNhbiBwcm9iYWJseSBnZXQgaXQgZnJvbSBn
aXRodWIsIGJ1dCBJIAo+PiBtdXN0IGFkbWl0LCBpdCBpcyBub3QgbXkgZmF2b3JpdGUgd2F5IG9m
IGluc3RhbGxpbmcgc29mdHdhcmUuCj4+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

