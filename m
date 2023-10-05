Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 541317BA9EE
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 21:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696533670;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=adBsDIwrK0H8aFkNuJ7T+OIdHhQ6qYZLhdyC9FJq5w0=;
	b=CimhVKJEddQgGljqekVcNg3/SoCxDe3tOLjIr8cBnbXY3OMIiBplPyGr+z3FTzXQF0tBzH
	1IORr9MnuBl9Jbcyzvqfm1vp1eRlYHCsJBgkSURUnp1fvz5q3DZSPL/X/imnO++qs7OWWz
	meEsJZ7/y35Jn3Z/sCHhX/nTQKimsDo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-353--LqhaBPZPAeNM7BROWyHTA-1; Thu, 05 Oct 2023 15:20:50 -0400
X-MC-Unique: -LqhaBPZPAeNM7BROWyHTA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03F38800045;
	Thu,  5 Oct 2023 19:20:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 39A5840C6EA8;
	Thu,  5 Oct 2023 19:20:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7250519465B1;
	Thu,  5 Oct 2023 19:20:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Oct 2023 21:20:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Intro.
To: blinux-list@redhat.com
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
 <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
 <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
 <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
 <mailman.1585.1696532367.2981449.blinux-list@redhat.com>
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
In-Reply-To: <mailman.1585.1696532367.2981449.blinux-list@redhat.com>
Message-ID: <mailman.1582.1696533647.2981441.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpJIGFtIHNvcnJ5IGJ1dCBTbGludCBpcyBub3QgYXZhaWxhYmxlIGZvciBhbiBBUk0g
YXJjaGl0ZWN0dXJlLCBvbmx5IHg4Nl82NAoKT3RoZXIgdGhhbiwgdG8ga25vdyBtb3JlOgpodHRw
czovL3NsaW50LmZyCgpDaGVlcnMsCkRpZGllcgpTbGludCBtYWludGFpbmVyCmRpZGllcmF0c2xp
bnRkb3RmcgoKCkxlIDA1LzEwLzIwMjMgw6AgMjA6NTksIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBTbGludCBpcyBhbiBpc28gYW5kIGlzIGF2YWlsYWJs
ZSBhcyBhIHRvcnJlbnQuCj4gaHR0cHM6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50
LTE1LjAvaXNvL3NsaW50NjQtMTUuMC01Lmlzby5zaGEyNTYKPiBodHRwczovL3NsYWNrd2FyZS51
ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9pc28vc2xpbnQ2NC0xNS4wLTUuaXNvCj4gCj4gSWYg
eW91IGhhdmUgc2hhMjU2c3VtIG9uIHlvdXIgbWFjaGluZSBydW4gdGhlIGZvbGxvd2luZyBjb21t
YW5kIGFuZCBpZiBpdAo+IHJldHVybnMgdGhlIG5hbWUgb2YgdGhlIGlzbyBmb2xsb3dlZCBieSBv
ayB5b3UgbGlrZWx5IGdvdCBhIGdvb2QgZG93bmxvYWQuCj4gc2hhMjU2c3VtIC1jIGh0dHBzOi8v
c2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNS4wL2lzby9zbGludDY0LTE1LjAtNS5p
c28uc2hhMjU2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

