Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id B31AEBE416
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 20:00:34 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BEDD685539;
	Wed, 25 Sep 2019 18:00:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15FA4194B2;
	Wed, 25 Sep 2019 18:00:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9E6B18037CA;
	Wed, 25 Sep 2019 18:00:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PI0EJR030704 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 14:00:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 74D65608C0; Wed, 25 Sep 2019 18:00:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F1DB60920
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 18:00:12 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2B6B930ADBA4
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 18:00:11 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id r3so7992563wrj.6
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 11:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=kUPHFZl7RJmsl3YXVF3b8tQImv5KGAugWX3icumM6dM=;
	b=Tr48jKu9YS0ZY48lRj9m1d5iWXzlu/HV6YPbsrpJzt2ajK35pFpg92z0wcxTmwcJ5q
	1F6+WJr0l3fsLXCYQsxTS6eI3dBEulwr+nnOGxXzLIz/pwTsfU5XRjGsacVkJvk1EaSx
	G9doCTMlDEsI+pKD4a1SEtbe05Zb29YB1qEfFK9lDGc0Xt7gfCSbrkRqNoc0MaB+pJhf
	X2dko/boU1ZxEek9rENTvEPOsW4QGx9v48HZ1WCGEmaTXHbSQDdUiyjbbbcNYo/qqt/d
	AuBTQHY8AkkOz+9CO2jxrxvmMssSAhgBnbxCTtK9CQ1jc7MBtMD0QurioZu+5OLhcYRW
	aPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=kUPHFZl7RJmsl3YXVF3b8tQImv5KGAugWX3icumM6dM=;
	b=WFwc7DcLzpoGHytUf7477/wvcK13fhgS/hqilFziAw6BgEwdNCIo2ZrdP1OD+Thn1Y
	lad+ZPu74KgiLwe+gVamcQzIfrwALrggTfmZ3gdoU/rjHFce5tY5ZOtqOf05LkpBWAgZ
	hTWZTRb1xXrf77O+y+ZW+CCCkxwUi7frblVMW5EEr/o3bU1eJR8JEqLHiE4c4AwtkfSh
	ehc+cGwiZu2IISDaR9iqUtHNu6VQiLLmBhzxNKcaAJ37aEqh4ZeUnEcb2FN6uuhhfV4b
	kpJcVLejHLDFhV3zr/cPqSCSM4clCRsV6M4ta4vjo8V+HEIWB+KWu6RE73NnyfgTSF0K
	hLZQ==
X-Gm-Message-State: APjAAAW/YuhVSQBjMJ5t8JJ2JNO+dkpjA2pRnjcYgy5iJkPyyulAZ/BR
	eJXeOENp7Rmfz4Z6sXCGgok+dabp01IM/rIKtlHqmHA=
X-Google-Smtp-Source: APXvYqwbMgMCIrIdVsthtVPr0TfFcPBu5wOb9pPpr8i3BENPe3Y5xikLLVE5KmdG/o+rD9507Ci9Ajpn/Q20TxGdUEE=
X-Received: by 2002:adf:bb8e:: with SMTP id q14mr11316924wrg.74.1569434409522; 
	Wed, 25 Sep 2019 11:00:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:9e09:0:0:0:0:0 with HTTP; Wed, 25 Sep 2019 11:00:08
	-0700 (PDT)
In-Reply-To: <498e4212-5f45-edb0-b1a6-ec289b91d12c@slint.fr>
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
	<CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
	<CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
	<989ae4bf-dd95-9c80-a903-4a715106bb53@slint.fr>
	<CAOdwYiRqBvEe4cQA36=Tdfhy06Zx=AU+D2_PhBqN3A++DeDLpg@mail.gmail.com>
	<498e4212-5f45-edb0-b1a6-ec289b91d12c@slint.fr>
Date: Wed, 25 Sep 2019 20:00:08 +0200
Message-ID: <CAOdwYiTmWHx39g=b5zETpK4qZKyiJmKY3OEHhvWyzNcLt2F6Aw@mail.gmail.com>
Subject: Re: grub problem
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.47]);
	Wed, 25 Sep 2019 18:00:11 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Wed, 25 Sep 2019 18:00:11 +0000 (UTC) for IP:'209.85.221.45'
	DOMAIN:'mail-wr1-f45.google.com' HELO:'mail-wr1-f45.google.com'
	FROM:'kg.kristoffer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.45 mail-wr1-f45.google.com 209.85.221.45
	mail-wr1-f45.google.com <kg.kristoffer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x8PI0EJR030704
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 25 Sep 2019 18:00:33 +0000 (UTC)

RG9uJ3Qga25vdy4Kd2hhdCBjYW4gSSBkbyBhYm91dCB0aGlzPwpJIGRvbid0IHdhbnQgdG8gY2hh
bmdlIGJpb3Mgc2V0dGluZ3MuCgoKMjAxOS0wOS0yNSAxNzo1MiBHTVQrMDI6MDAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IE15
IGFzc3VtcHRpb24gd291bGQgYmUgdGhhdCB5b3VyIG1hY2hpbmUgaXMgc2V0IHRvIGJvb3QKPiBp
biBFRkkgbW9kZSwgbm90IExlZ2FjeSwgdGh1cyBpdCBkb2Vzbid0IHRyeSB0byBib290IHVzaW5n
Cj4gYW4gTUJSIGJ1dCBsb29rcyBmb3IgYW4gRUZJIGltYWdlIGluIGFuIEVGSSBTeXN0ZW0gUGFy
dGl0aW9uCj4gYW5kIGZpbmQgb25seSB0aGUgV2luZG93cyBvbmUuCj4KPiBXYXMgV2luZG93cyBp
bnN0YWxsZWQgaW4gRUZJIG1vZGU/Cj4KPiBCZXN0LAo+Cj4gRGlkaWVyCj4KPiBPbiAyNS8wOS8y
MDE5IDE3OjE0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBs
YXRlc3QgdmVyc2lvbiBvZiBkZWJpYW4uCj4+Cj4+Cj4+IDIwMTktMDktMjUgMTc6MDcgR01UKzAy
OjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+IDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPj4+IFdoaWNoIGRpc3RyaWJ1dGlvbiBhbmQgdmVyc2lvbiBvZiB0aGUgZGlz
dHJpYnV0aW9uPwo+Pj4KPj4+IE9uIDI1LzA5LzIwMTkgMTc6MDAsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSSBpbnN0YWxsZWQgd2luZG93cyBmaXJzdC4K
Pj4+PiBJIGdvdCBxdWVzdGlvbiBpZiBJIHdhbnRlZCB0byB3cml0ZSBncnViIHRvIG1ici4gSSBh
bnN3ZXJlZCB5ZXMuCj4+Pj4KPj4+Pgo+Pj4+IDIwMTktMDktMjUgMTY6MzggR01UKzAyOjAwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Ogo+Pj4+PiBZZWFoLCBJIHRoaW5rIGl0J3MgYmVlbiBtb3JlIHRoYW4gYSBkZWNhZGUg
c2luY2UgSSBsYXN0IHNldHVwIGEgZHVhbAo+Pj4+PiBib290LCBidXQgZXZlcnl0aGluZyBJJ3Zl
IGV2ZXIgcmVhZCBvbiB0aGUgc3ViamVjdCBzYXlzIFdpbmRvd3MKPj4+Pj4gZG9lc24ndCBwbGF5
IG5pY2Ugd2l0aCBvdGhlciBPU2VzIHNvIHlvdSBzaG91bGQgaW5zdGFsbCBXaW5kb3dzIGZpcnN0
Cj4+Pj4+IHRvIGVuc3VyZSB5b3UgZG9uJ3QgZW5kIHVwIHdpdGggYSBib290IGxvYWRlciB0aGF0
IGlnbm9yZXMgYW55dGhpbmcKPj4+Pj4gdGhhdCBpc24ndCBXaW5kb3dzLCBhbmQgSSd2ZSBuZXZl
ciByZWFkIG9mIFdpbmRvd3MgZml4aW5nIHRoaXMgYmFkCj4+Pj4+IGJlaGF2aW9yLgo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4KPj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKLS0gCktyaXN0
b2ZmZXIgR3VzdGFmc3NvbgpTYWzDpG5nc2dhdGFuIDdhCnRlbDowMzMtMTIgNjAgOTMKbW9iaWw6
IDA3MzAtNTAwOTM0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
