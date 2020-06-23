Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9AE9B20467A
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 03:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592874228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qxxkjKEp7tjHIHPKj6Yy9rxIauLC9hfRJKPH1uHFIBA=;
	b=WBBNbiLuzDfjZ8BSWeeCqG0zx0qV3rfSePJD+z6XlIBIEKzCyN8cmhDCWWd8k4ie851xXZ
	uHAXGSycLrqB9v4wlLgsycP+BiomwqVDZtvq/ArNOKsGGFzOfK50s0ILmQ6bVCT7bUocds
	/+XRC8W3SAX+86uxCwTnVngt9WwEqzM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-TbuegFmzOA6sGJWCj7qOYA-1; Mon, 22 Jun 2020 21:03:46 -0400
X-MC-Unique: TbuegFmzOA6sGJWCj7qOYA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2CDD83DC11;
	Tue, 23 Jun 2020 01:03:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0CB8100EBAE;
	Tue, 23 Jun 2020 01:03:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78259180954D;
	Tue, 23 Jun 2020 01:03:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05N13USW019178 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 21:03:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DCE6E100320C; Tue, 23 Jun 2020 01:03:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D88641000DB9
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 01:03:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFB72811768
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 01:03:28 +0000 (UTC)
Received: from sonic301-1.consmr.mail.bf2.yahoo.com
	(sonic301-1.consmr.mail.bf2.yahoo.com [74.6.129.40]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-293-1yP2SxAiNgaSCTOUQrOTyw-1;
	Mon, 22 Jun 2020 21:03:26 -0400
X-MC-Unique: 1yP2SxAiNgaSCTOUQrOTyw-1
X-YMail-OSG: IQcJFuUVM1kDh7nr7pCO5StUNYjI65oyJ_ZfOzYAGv_VxX1csgF.obFmyvQ7W.J
	Lm83semp7U6DVevzBZnrAIp6ZwSfuft_nVv_gU1iqV9WD7yxnRXT8wJcUOAXuaHBLYBmz0P8vqpQ
	vmcNl9h_GQereWgET_DTCQLeZx5prlkQsEOPyXfWI5VikM4Pahjsa0whaPFwAdlMqsbP.Jh89VQN
	GG2n7lRIuzKAlyAx._2ro2k_jovhN9_4d.A12dCwf1cJrw0h8OieMv2O7ecb4ne67u54JgRrUaY7
	MR92BFKRC.Hy_18g8cJGQaOA6FOOjOC7mrtea_CbyVIkAnaIjRb4DzcTrr1K5v0JYN3J6_DAodik
	NNCxNAP72VWt.875oAR_or_ru2orCcW_98dCGcXDGUg9buiCyLKkKaxPJMDJVAg_vZ9alZehMKlk
	vqyOl4EVYL372JR9AfU0ZpnEJ9tLu1xa_rKX69bw.UpABRwD0girfV14zdy2KdgDoB3A72P7NWog
	Th8LbDBM6JxkwLo7GxcN9BO1aiOJ37A0hpH7b7wCFAEd3.mMO8dLCHZCxl2Nr.WgFrBD.IfWE44O
	QHQPCJ28QGMd_uI8kTveLalVT6kOZoRBEccf.4SpP.k2uMeHNdr8_d02f6cc.LTVFXJysDyR60pL
	xPrjv1SjROB45e29_06Zlio50Ef8zFbaf2PY._I5jFmy8_v7ZbVCcVCG474cmHn_XlOkiB9DaQCS
	kUu5eHo833XdhtEsM.KWwmtzmgoC281gwyshZiULXl7es17hIChIIYhN_snGd8xrbOOf1mr17VSC
	c6e6yrCrXEDLmHZmbV1Zk9ZuLaGhD_lXy5v4YNyQShXcaFoDjU6eisEHxQHUZhA5LLxd33bOLncc
	HZBzUhXSnfa3ru2cQPhWxXC1POy2__Z5WsrqQa71_PFBS9z_XzT0HVehOA7QlTIqLsQuaUfuQbuT
	l3T_CO0ER1isUTLsZxNZ1ds_8GYEn0HpvHRcCHayrEnTNZZ5rV8O17hHCxTH6uo6.PZMSRvjh7Hd
	WlFfLPy.OyZMjfm_hPimy3WtuzX_wTqBKQ1c_UdraYRumLmrtB3__f6qVYVa.IOiotWdBOSNOHJN
	EKK.GkqLImspBtolMHhcLIfmlUlgeIN5vrkvAXzxWYeVizWw4B1rsgLieeReKSAkkI6G16ckXoo9
	umqyzFudo2nAdZyicKNGDVc1GoB5Fv17R2OpD0tVwCeW4HNFGM61F.5veWnOAcfURoInRPq9l_K1
	YkcegLQ4F8kizaTErqraw.iFzSKfBsCMaN5Zted1IzPcQQMPUUkIhFJVSyggMKg2mWuIyXAw0fkh
	jfhB9xcVb2jj88ZtP_zsQYbcHTTUW32CLODq9VXy_uJyCp2tdF0FEgfwbr12qSShgRew.qt.1VzE
	.1iUE6r7t2zEIYze9UbOrfbAHFi_m3Oy8hnjBLwom6vc-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 23 Jun 2020 01:03:26 +0000
Received: by smtp427.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID d9201feca2c2c384339af6ccb4797080; 
	Tue, 23 Jun 2020 01:03:24 +0000 (UTC)
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
Message-ID: <e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
Date: Mon, 22 Jun 2020 21:03:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

TXkgb2JqZWN0aW9uIHRvIHVzaW5nICJsaXRlcmFsbHkiIGZpZ3VyYXRpdmVseSBpcyB0aGF0IHdl
IHRoZW4gaGF2ZSB0byAKZmluZCBhIG5ldyB3b3JkIGZvciBsaXRlcmFsbHkuwqAgSW4gdGhlIGV4
YW1wbGUgaGVyZSwgImV4cGxvZGVkIiBpcyAKZW5vdWdoIGFuZCBpcyBmaWd1cmF0aXZlIGFueXdh
eS4KCgpJJ2xsIHNraXAgdGhlIG90aGVyIHN0dWZmLCBhbmQgdGFrZSBhIHNlY29uZCBvZiBhbXVz
ZW1lbnQgdGhhdCB0aGlzIApiZWNhbWUgYSB0b3BpYyBvbiBhIExpbnV4IGxpc3QuwqAgKFRoZW4g
YWdhaW4sIGNvbXB1dGVycyBhcmUgcXVpdGUgCmxpdGVyYWwtLWluIHRoZWlyIG51bWVyaWMgZmFz
aGlvbi4KCgpCZXN0IQoKQWwKCgpPbiA2LzIyLzIwIDY6NDcgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gWWVhaCwgSSBkb24ndCByZWFsbHkgZ2V0IHRoZSBv
YmplY3Rpb24gdG8gdGhlIHdvcmQgInNoYXJlIiBpbiB0aGUKPiBjb250ZXh0IG9mIHRlbGxpbmcg
c29tZW9uZSBhYm91dCBhbiBleHBlcmllbmNlLCBhbmQgd2hpbGUgc2F5aW5nCj4gc29tZW9uZSBo
YXMgaXNzdWVzIGlzIHZhZ3VlciB0aGFuIHNheWluZyBzb21lb25lJ3MgbnV0cywgSSBkb24ndAo+
IHJlYWxseSBzZWUgc3VjaCBhcyBldXBoZW1pc3RpYy4uLiBncmFudGVkLCBzb21lb25lIGhhdmlu
ZyBpc3N1ZXMgY291bGQKPiBqdXN0IGFzIGVhc2lseSByZWZlciB0byBldmVyeWRheSBzdHJlc3Mg
YW5kL29yIGJhZCBsdWNrLgo+Cj4gSSdtIGFsc28gb2theSB3aXRoIHRoZSB3b3JkICJsaXRlcmFs
bHkiIGJlaW5nIHVzZWQgZmlndXJhdGl2ZWx5KGUuZy4KPiBzYXlpbmcgc29tZW9uZSBsaXRlcmFs
bHkgZXhwbG9kZWQgYXMgbWV0YXBob3IvaHlwZXJib2xlIGZvciBhIGZpdCBvZgo+IGFuZ2VyKS4K
Pgo+IFRoZW4gYWdhaW4sIHBlcmhhcHMgbXkgaW5uZXIgbGluZ3Vpc3QgaXMganVzdCBtb3JlIG9m
IGEgZGVzY3JpcHRpdmlzdAo+IHRoYW4gYSBwcmVzY3JpcHRpdmlzdC4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

