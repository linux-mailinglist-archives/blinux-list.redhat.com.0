Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A75BE0B8
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 17:00:49 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5FF433078A23;
	Wed, 25 Sep 2019 15:00:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 596A95C1D4;
	Wed, 25 Sep 2019 15:00:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9BA34EE68;
	Wed, 25 Sep 2019 15:00:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PF0adi018330 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 11:00:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 703BD60126; Wed, 25 Sep 2019 15:00:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AC69600C8
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:00:33 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7CD697FDF4
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:00:32 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id o18so7339721wrv.13
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 08:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=hNBupp93m9a4JBSpqYbWBlprprv/t5WbH9i2nl6uTbs=;
	b=In34Pj078zSH/kJj+lzishV/kTwYzZMQ6bKf3JSk93zW3MVj8umAgNw7nJoGFbI7ut
	ljKE4CK8IbPG5TkbaPhQykk2uhnUH3JGHFCX/2qseDRJo5z4zD2tXpkK5XdPdSlHyHGN
	8+I+l8H1h5dBpGO9ojuXhGrvPSWLMyDzKN6zQ4/bjJ8tzapmQn5CTdPv4Dktq9weboTU
	ZrXnNevPQKEHMrxmcgWA+0+tpbm2uYFrzPZb/F5Aa1RSFHxPWXpCroGKQ11aRx3osFS/
	KZMSr8mNo4YQ910YctIme9xwoog57budd4z/cFoGt6Lzkumed2Wj62fQ5j6dWMcYpaPQ
	G6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=hNBupp93m9a4JBSpqYbWBlprprv/t5WbH9i2nl6uTbs=;
	b=MYSJt1WyiR28uC9P7+i02c8QwD3CMob8yzTDMA3bptzFx2JVgMgIRhjEsm8ZgBWdwV
	O2JVvc/vOTfAvvCdFmy3eCuZm5qgKQsDtpkCeRJpp05jHsxYCTk5CwcG+8iXCdqmxNqm
	88O/5y9zgO11Ei4tfKS3P3T2naKcQh0zrPcBH93Wv1qqglBARAlKT8KURvP9xvegOgAd
	1vmRtPEimSe8QojxVTLkOQOB5O6ClzglNBw7gzFG94rbTaBC3NKWP2Tr+gTZCKTEGs/C
	38yJddz+7Okr03jWfh+v8g1mA2tCdgB61KMcw/gZa8QRvjilpOkQDBZqQVDRCWK/7HjZ
	0DGg==
X-Gm-Message-State: APjAAAXLKTUzsUkFqYb3GYf5/fZP2oI2AcejrkIqwA+xpMR5IDlejNc/
	LLv6i2FsqDHLbaBZLEh64k6wX8Yr519w3jdm7VWp8r4=
X-Google-Smtp-Source: APXvYqz4DWK3neTaVu0hKMyNJztetO3jJ9+FqBXuEY5juHW+1bsrxHvwPD3r8rjh8t2zPIpJLnbOPr0gp80L8ngA3bI=
X-Received: by 2002:adf:bb8e:: with SMTP id q14mr10637676wrg.74.1569423630773; 
	Wed, 25 Sep 2019 08:00:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:9e09:0:0:0:0:0 with HTTP; Wed, 25 Sep 2019 08:00:30
	-0700 (PDT)
In-Reply-To: <CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
	<CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
Date: Wed, 25 Sep 2019 17:00:30 +0200
Message-ID: <CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
Subject: Re: grub problem
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Wed, 25 Sep 2019 15:00:32 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Wed, 25 Sep 2019 15:00:32 +0000 (UTC) for IP:'209.85.221.47'
	DOMAIN:'mail-wr1-f47.google.com' HELO:'mail-wr1-f47.google.com'
	FROM:'kg.kristoffer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.47 mail-wr1-f47.google.com 209.85.221.47
	mail-wr1-f47.google.com <kg.kristoffer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x8PF0adi018330
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Wed, 25 Sep 2019 15:00:48 +0000 (UTC)

SSBpbnN0YWxsZWQgd2luZG93cyBmaXJzdC4KSSBnb3QgcXVlc3Rpb24gaWYgSSB3YW50ZWQgdG8g
d3JpdGUgZ3J1YiB0byBtYnIuIEkgYW5zd2VyZWQgeWVzLgoKCjIwMTktMDktMjUgMTY6MzggR01U
KzAyOjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCjxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPiBZZWFoLCBJIHRoaW5rIGl0J3MgYmVlbiBtb3JlIHRoYW4gYSBkZWNhZGUg
c2luY2UgSSBsYXN0IHNldHVwIGEgZHVhbAo+IGJvb3QsIGJ1dCBldmVyeXRoaW5nIEkndmUgZXZl
ciByZWFkIG9uIHRoZSBzdWJqZWN0IHNheXMgV2luZG93cwo+IGRvZXNuJ3QgcGxheSBuaWNlIHdp
dGggb3RoZXIgT1NlcyBzbyB5b3Ugc2hvdWxkIGluc3RhbGwgV2luZG93cyBmaXJzdAo+IHRvIGVu
c3VyZSB5b3UgZG9uJ3QgZW5kIHVwIHdpdGggYSBib290IGxvYWRlciB0aGF0IGlnbm9yZXMgYW55
dGhpbmcKPiB0aGF0IGlzbid0IFdpbmRvd3MsIGFuZCBJJ3ZlIG5ldmVyIHJlYWQgb2YgV2luZG93
cyBmaXhpbmcgdGhpcyBiYWQKPiBiZWhhdmlvci4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+CgoKLS0gCktyaXN0b2ZmZXIgR3VzdGFmc3NvbgpTYWzDpG5nc2dh
dGFuIDdhCnRlbDowMzMtMTIgNjAgOTMKbW9iaWw6IDA3MzAtNTAwOTM0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=
