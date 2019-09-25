Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D78B6BDBDB
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 12:09:49 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5F5253090FCB;
	Wed, 25 Sep 2019 10:09:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0B1F5D9D3;
	Wed, 25 Sep 2019 10:09:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 86D994E58B;
	Wed, 25 Sep 2019 10:09:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PA9U5j028533 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 06:09:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 907185C21F; Wed, 25 Sep 2019 10:09:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BF215C1D4
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 10:09:28 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3BF053175282
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 10:09:27 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id f22so4097611wmc.2
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 03:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=iXFA/wSlyeD8h1jfL17HzV10Z9a2QilBiTusi27IIj8=;
	b=SmP6tRYLYmXwGBI3Rr9/ArU+a7Egd+tCtkx0tEoMgZ8+MIRSGijtRdgWzg7iqDPV8I
	fcgnZamf59S4vSw98p7FLWAZm+XnAOOlRerIGWRUJDvIiuYze2xZaunEsqUoqs4BJ/Rk
	7QQovJ2jE0ot7ANVPBtj7trB7tg7gLSDenYfOedAsO7aknFzaWjWd8Ajb2thky79syvS
	BOB70FDAlxDX8rbDspZMhW30FzkFcmCcyuhXfntTiiOjOwvoUbBnmaPpx3x2HwDLSWmC
	FwiCywijtY9qlrkSymFKD1C3nutGnkQ5Fw6/X3/l6bSR7qbj362Z3Mj8d92smHojxS1V
	Ffkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=iXFA/wSlyeD8h1jfL17HzV10Z9a2QilBiTusi27IIj8=;
	b=dnjB7TUAdMNN1oDX5UCjQSLNEPldZYxfqqMLc3YSgUYs273Y7jNbc1Rf1BLqOHMKBk
	OR0HjXF+ZneWn5kC1Z9CP7bZ30ByNPrclSe3SnjMtckzzh2o7QRuL2MlS8VvXRgpcWF3
	ta8epCKtifMDIozEKef/9k/tLaI7KTvl3Z5VpWIN03CE81ZMGRj1F1EIpXa4XN8JZzha
	EMHSTzkylR/hFLfHRiOilXY5wdEkPOR4+XNwaQ17mnANr4nNxrOhNKFtjJyatnQDzJ2u
	UZ43dCp5SdVdTg72T1AdZxsMhsxP/j8XEiT0JlQSiX+fjacB87uElbWAAGqF69YZwUNR
	3OOw==
X-Gm-Message-State: APjAAAWdVmvtLvsLIFqBQ80kmPD+OQfvLmrrFfpuqVqAQqJJMdbPyl1j
	2ZFmFmnGaqjmngo50gWqlJmjtFMgrL2Yy+W8/7nex3k=
X-Google-Smtp-Source: APXvYqxDUait7BNgMN9HUJqAO8dTUJ16PvWn9J8+dXcUSKOKzoME/uETVytnEANV60a4DMLqdXTiBeQ3p8musKecxpg=
X-Received: by 2002:a1c:6841:: with SMTP id d62mr6923828wmc.48.1569406165539; 
	Wed, 25 Sep 2019 03:09:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:9e09:0:0:0:0:0 with HTTP; Wed, 25 Sep 2019 03:09:24
	-0700 (PDT)
Date: Wed, 25 Sep 2019 12:09:24 +0200
Message-ID: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
Subject: grub problem
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Wed, 25 Sep 2019 10:09:27 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Wed, 25 Sep 2019 10:09:27 +0000 (UTC) for IP:'209.85.128.45'
	DOMAIN:'mail-wm1-f45.google.com' HELO:'mail-wm1-f45.google.com'
	FROM:'kg.kristoffer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.45 mail-wm1-f45.google.com 209.85.128.45
	mail-wm1-f45.google.com <kg.kristoffer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x8PA9U5j028533
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 25 Sep 2019 10:09:48 +0000 (UTC)

SGkuCkkgZG9uJ3Qga25vdyBpZiBJJ3ZlIHdyaXR0ZW4gaGVyZSBhYm91dCB0aGlzIGJlZm9yZS4K
SSd2ZSBnb3QgYSBocCBwcm9kZXNrIDYwMCBjb21wdXRlci4KSSBoYXZlIGluc3RhbGxlZCB3aW5k
b3dzLgpCdXQgSSBjYW4ndCBib290IGxpbnV4LiBJIGRvbid0IGV2ZW4gZ2V0IGdydWIuIHdoZW4g
SSBib290IHRoZQpjb21wdXRlciBpdCBib290cyBpbnRvIHdpbmRvd3MuCkl0IGhhcyB3b3JrZWQg
b24gZXZlcnkgY29tcHV0ZXIgSSd2ZSBoYWQgZXhjZXB0IHRoaXMgb25lLgpMSW51eCB3b3JrcyB2
ZXJ5IGdvb2Qgb24gdGhpcyBjb21wdXRlciB3aXRob3V0IHdpbmRvd3MgaW5zdGFsbGVkLgoKCi0t
IApLcmlzdG9mZmVyIEd1c3RhZnNzb24KU2Fsw6RuZ3NnYXRhbiA3YQp0ZWw6MDMzLTEyIDYwIDkz
Cm1vYmlsOiAwNzMwLTUwMDkzNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
