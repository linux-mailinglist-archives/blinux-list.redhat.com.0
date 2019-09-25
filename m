Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F29BE0FC
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 17:14:45 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D3076753C7;
	Wed, 25 Sep 2019 15:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 579B661367;
	Wed, 25 Sep 2019 15:14:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E7024EE68;
	Wed, 25 Sep 2019 15:14:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PFEdqB019514 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 11:14:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8618B5C224; Wed, 25 Sep 2019 15:14:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8169B5C220
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:14:37 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 82AB1C08EC0C
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:14:36 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id f22so5407810wmc.2
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 08:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=bOMvlMtcF9VmwdecAe0FDcawqXjgRysb5wiswQLxXYI=;
	b=IsON1v1HwxOQ2zjN/Bn/i9McPFX67YdsG990YoeIE/x3mt72WRfJ+SpNReY/0BZ/O/
	w89JR1r7MCVtvdz2xvJ86bXoB+U44wGxvtfP7xjythQ5g3jBblSFiCLkib29JEKm2U86
	i5mNXht3lL3ZiOnPJJjL6uexDRzYbWSHqd4cNFN8asJeqhisp6a1cMpSa6xDUUiXkmYk
	VqYfk+ZZrukqLnkfE5a9dzTWZdsYTahUH/nD+e3LIjU/D+LqTl/XZqjzIw+Milly2IYH
	sbjQhsQQy6bxvqzt90AweIWgiXYOtnMwe9kFGzV58KBfa1tAft0yebyiSq37uAzA32SG
	K64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=bOMvlMtcF9VmwdecAe0FDcawqXjgRysb5wiswQLxXYI=;
	b=mKfU1EcEOQH3KV9twPLBhOn94POiaOmelvCs2Y8AODMUPktgAMOU7SclbsOZ2S8PS3
	3zjUtDUm0n4fs+xm7cCjNxFWb47dRUJygf5HavNYNT/LVse9ngMFQaHUG5uBZaqyZIbw
	e08lKE4aHm+awCe1mwHliVoXwjDS/31BJ8AcYv/v/sfAjrvkkBIfEnk1AHwOvkngsHVf
	9kaJr6qU4zCnpd2buIpbXaWRMduG/VluiiUXsF1BSpibjZ0dv8HZlQlLHPBnNen+LFIu
	dxCYSf8SkGSTntEQVA/we8mOgfDKSFD9rN1ZTM39io+5UbpTwmeHEegH14NKISEO7C0w
	Orjg==
X-Gm-Message-State: APjAAAVvLHLhqrw2THu07KlVNQzk53RJSNFddAEl96B6+HL+hEiiiVFH
	DSiTGWVxx5vSgQVnANuhiCX1f6cOyw6wj+G1lvUyZRo=
X-Google-Smtp-Source: APXvYqxxkIni0XIvh12GyckDxdlvICDHp7uRjSFh2VLvFjLzASg+UmD4kPqJpF57m6IgJMsCrSfqAjgLpFh5JKM5g+g=
X-Received: by 2002:a05:600c:114e:: with SMTP id
	z14mr7886500wmz.134.1569424474880; 
	Wed, 25 Sep 2019 08:14:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:9e09:0:0:0:0:0 with HTTP; Wed, 25 Sep 2019 08:14:34
	-0700 (PDT)
In-Reply-To: <989ae4bf-dd95-9c80-a903-4a715106bb53@slint.fr>
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
	<CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
	<CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
	<989ae4bf-dd95-9c80-a903-4a715106bb53@slint.fr>
Date: Wed, 25 Sep 2019 17:14:34 +0200
Message-ID: <CAOdwYiRqBvEe4cQA36=Tdfhy06Zx=AU+D2_PhBqN3A++DeDLpg@mail.gmail.com>
Subject: Re: grub problem
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.31]);
	Wed, 25 Sep 2019 15:14:36 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Wed, 25 Sep 2019 15:14:36 +0000 (UTC) for IP:'209.85.128.42'
	DOMAIN:'mail-wm1-f42.google.com' HELO:'mail-wm1-f42.google.com'
	FROM:'kg.kristoffer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.42 mail-wm1-f42.google.com 209.85.128.42
	mail-wm1-f42.google.com <kg.kristoffer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x8PFEdqB019514
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 25 Sep 2019 15:14:44 +0000 (UTC)

bGF0ZXN0IHZlcnNpb24gb2YgZGViaWFuLgoKCjIwMTktMDktMjUgMTc6MDcgR01UKzAyOjAwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29t
PjoKPiBXaGljaCBkaXN0cmlidXRpb24gYW5kIHZlcnNpb24gb2YgdGhlIGRpc3RyaWJ1dGlvbj8K
Pgo+IE9uIDI1LzA5LzIwMTkgMTc6MDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+IEkgaW5zdGFsbGVkIHdpbmRvd3MgZmlyc3QuCj4+IEkgZ290IHF1ZXN0aW9u
IGlmIEkgd2FudGVkIHRvIHdyaXRlIGdydWIgdG8gbWJyLiBJIGFuc3dlcmVkIHllcy4KPj4KPj4K
Pj4gMjAxOS0wOS0yNSAxNjozOCBHTVQrMDI6MDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24KPj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4gWWVhaCwgSSB0aGluayBp
dCdzIGJlZW4gbW9yZSB0aGFuIGEgZGVjYWRlIHNpbmNlIEkgbGFzdCBzZXR1cCBhIGR1YWwKPj4+
IGJvb3QsIGJ1dCBldmVyeXRoaW5nIEkndmUgZXZlciByZWFkIG9uIHRoZSBzdWJqZWN0IHNheXMg
V2luZG93cwo+Pj4gZG9lc24ndCBwbGF5IG5pY2Ugd2l0aCBvdGhlciBPU2VzIHNvIHlvdSBzaG91
bGQgaW5zdGFsbCBXaW5kb3dzIGZpcnN0Cj4+PiB0byBlbnN1cmUgeW91IGRvbid0IGVuZCB1cCB3
aXRoIGEgYm9vdCBsb2FkZXIgdGhhdCBpZ25vcmVzIGFueXRoaW5nCj4+PiB0aGF0IGlzbid0IFdp
bmRvd3MsIGFuZCBJJ3ZlIG5ldmVyIHJlYWQgb2YgV2luZG93cyBmaXhpbmcgdGhpcyBiYWQKPj4+
IGJlaGF2aW9yLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
CgotLSAKS3Jpc3RvZmZlciBHdXN0YWZzc29uClNhbMOkbmdzZ2F0YW4gN2EKdGVsOjAzMy0xMiA2
MCA5Mwptb2JpbDogMDczMC01MDA5MzQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==
