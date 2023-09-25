Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7EB7ADC6E
	for <lists+blinux-list@lfdr.de>; Mon, 25 Sep 2023 17:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695657344;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=ep/Q4l/JopzJf1GEoA0FvZ4YtjzoMIiocHPGq9fyD8M=;
	b=avw9yVnKJ2baCrE03Agdx5N1koVE94yZdWRwDbSfLaq9Y0kIbYxuVHwI37a5PVhWwIIO8l
	AJeGOgXBLbJdwBvBY3mJT1bayaXdRE84RxVf5LTUVbPdbra4kJcsYBOcFyMathUs8juDtO
	GDPJK7tQFNicSRaEhPUNscHnZlihYGM=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-332-6yFWfDugNSePgquzQXVM6g-1; Mon, 25 Sep 2023 11:55:40 -0400
X-MC-Unique: 6yFWfDugNSePgquzQXVM6g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDA7C29AB402;
	Mon, 25 Sep 2023 15:55:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6AF7540C2064;
	Mon, 25 Sep 2023 15:55:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D4B6419465B1;
	Mon, 25 Sep 2023 15:55:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 25 Sep 2023 17:51:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Talking Images for 64-bit Laptop
To: blinux-list@redhat.com
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
 <mailman.294.1695641943.4021072.blinux-list@redhat.com>
 <mailman.258.1695649240.4021075.blinux-list@redhat.com>
 <mailman.328.1695651782.4021072.blinux-list@redhat.com>
 <mailman.329.1695652180.4021078.blinux-list@redhat.com>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <mailman.329.1695652180.4021078.blinux-list@redhat.com>
Message-ID: <mailman.289.1695657325.4021074.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

c291cmNlZm9yZ2UtbmV0IG9ubHkgc3RvcmVzIGFuIG9sZCAzMi1iaXQgdmVyc2lvbi4KCkRpZGll
cgoKTGUgMjUvMDkvMjAyMyDDoCAxNjoyOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiBhIMOpY3JpdMKgOgo+IFRoYXQncyBob3cgdGhhdCdzIGRvbmUgb24gc291cmNlZm9yZ2Uu
bmV0LiAgVGhlIHdlYm1hc3RlciB3b3VsZCBoYXZlIHRvIGRvCj4gdGhhdCwgYW5kIG5vdyBzb3Vy
Y2Vmb3JnZS5uZXQgaXMgb3V0IG9mIGRhdGUgb24gbGF0ZXN0IHZlcnNpb24gZm9yIHNvbWUKPiBy
ZWFzb24uCj4gCj4gCj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJl
IGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAs
IGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+IG9yZGVyLiIgRWQg
SG93ZGVyc2hlbHQgMTk0MC4KPiAKPiBPbiBNb24sIDI1IFNlcCAyMDIzLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBUaGF0IGRvd25sb2FkIGlzIGhhcHBl
bmluZyBub3cuICBJdCdzIHRoZSBzYW1lIHVybCBleGNlcHQgdGhhdAo+PiB0aGUgdmVyc2lvbiBu
dW1iZXIgbm93IGlzIDE1LjUgd2hpY2ggaXMgZmluZSBhbmQgZXhwbGFpbnMgd2hhdCBpcwo+PiBo
YXBwZW5pbmcuICBXaGF0IEkgY29waWVkIGZyb20gdGhlIGhhbmRib29rIGlzIDE1LjAuICBJIHdp
c2ggYWxsCj4+IHByb2JsZW1zIHdlcmUgdGhpcyBlYXN5IHRvIGZpZ3VyZSBvdXQuICBBIHN1Z2dl
c3Rpb24gbWlnaHQgYmUgdG8KPj4gbWFrZSB0aGUgdXJsIHJlZmVyIHRvIHNvbWV0aGluZyBsaWtl
IGxhdGVzdF92ZXJzaW9uIGFuZCB0aGF0IGRlc2lnbmF0aW9uCj4+IHdvdWxkIGFsd2F5cyBkZXNj
cmliZSB3aGF0ZXZlciB2ZXJzaW9uIHdhcyBtb3N0IGN1cnJlbnQuCj4+Cj4+IE1hcnRpbgo+PiBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cml0ZXM6Cj4+PiBIYXZlIHlvdSB0cmllZDoKPj4+IGh0dHBzOi8vc2xhY2t3YXJlLnVrL3Ns
aW50L3g4Nl82NC9zbGludC0xNS4wL2lzby9zbGludDY0LTE1LjAtNS5pc28KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

