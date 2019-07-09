Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A57162D13
	for <lists+blinux-list@lfdr.de>; Tue,  9 Jul 2019 02:30:50 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6611430860AF;
	Tue,  9 Jul 2019 00:30:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9FDF5C673;
	Tue,  9 Jul 2019 00:30:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC02318005C7;
	Tue,  9 Jul 2019 00:30:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x690TaiE016894 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Jul 2019 20:29:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7DE615C675; Tue,  9 Jul 2019 00:29:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 785A85C666
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 00:29:34 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A057E30C1321
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 00:29:24 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id z1so14384085wru.13
	for <blinux-list@redhat.com>; Mon, 08 Jul 2019 17:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=nTGPBSlM4CP41n5m0eveyRIky6AXzVkvXnweIjIh5Dk=;
	b=oUiTCbVQNrEVjhkkj+ZB6D97q3O9nwn1FyQQzNcGAQNlMG+Yo8iT+VB8FXAN1bk/qo
	0Ngx/ens1EorNF6Warf/NRmKOX8wui1pIUuA9dUaEr0GT0f4yIjIKZO4+px9HpGJGg97
	9NQdASC9iHsaysb+D0AWn0cGB3t/Ykdmrp7dhea+FIZSAlZP/zvsClvoce+Q6wPBuaV3
	l78t83kOqBpzptXiRvm5Xr1KJmliT8/Kof6BnkXcPq3QyrIrYZZp8y9BvLsOaUdoNwXC
	xqtnU/hS3hB5pEUuIPxE2mUSWSovfOVbKLSbE4/K9ZpRTHD3efmRUzKJMlQbjwc8d4/D
	4pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=nTGPBSlM4CP41n5m0eveyRIky6AXzVkvXnweIjIh5Dk=;
	b=S5Zqn2YeNIPgRM+D5bglv3oEtaKst2bH1nBlrp0sRLI2RdxTcaRQC22RuEFj5bfy9C
	CFpgp0kOoHyfxo74FQ9+tH6M908RO1I2ZIrr1hJJGSga7ZZMH5Xarlx6WjVJkp5gXCa3
	E63mz5Ph1VeICVuA1iNs6GPzMCU+uurBHAnCvjBBeL6SPh0UxXvhGL9uFGAW+H7RzD+s
	ILObAiZCfPtTOd4wfh17i4wIBOQVO5Si547IQ2fXDY7J5b76gfZyb5wx3iyPjeb7IQWs
	ET5RlXvZyx1GSADecEcTN8D/dhVHh6xy0Iy4koISTYSPRQ73cGKjRJ37MdV8k6AAqSDT
	Gtlw==
X-Gm-Message-State: APjAAAX98RK71SlheBF51xQVng8rgxncmAB2a5GJ+RMrhlE4XCgcdOd4
	/vikoPSclt4dApWBY36spNIqD/L6ponXiTpHK+odJB+C
X-Google-Smtp-Source: APXvYqx3cSQDfquXE9TMEWSbPZaKBo/j6tPHGINPWOodKFrM13swbjg1B/FLBSb7RBrQ+FMoNuh0E7MJgpVWxiazQQc=
X-Received: by 2002:adf:e483:: with SMTP id i3mr20085672wrm.210.1562632162978; 
	Mon, 08 Jul 2019 17:29:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:6756:0:0:0:0:0 with HTTP;
	Mon, 8 Jul 2019 17:29:22 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:29:22 -0400
Message-ID: <CAJKfDDF5PMXY6S6_r8zAAq3FmA-eGW2+o3B1xhKqZBKt=XmoLw@mail.gmail.com>
Subject: humanware braillant 40
To: blinux-list <blinux-list@redhat.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.45]);
	Tue, 09 Jul 2019 00:29:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Tue, 09 Jul 2019 00:29:24 +0000 (UTC) for IP:'209.85.221.44'
	DOMAIN:'mail-wr1-f44.google.com' HELO:'mail-wr1-f44.google.com'
	FROM:'spikemcc@gmail.com' RCPT:''
X-RedHat-Spam-Score: 1.197 * (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, PDS_NO_HELO_DNS, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_NONE) 209.85.221.44 mail-wr1-f44.google.com 209.85.221.44
	mail-wr1-f44.google.com <spikemcc@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x690TaiE016894
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Tue, 09 Jul 2019 00:30:49 +0000 (UTC)

SGVsbG8sCgpjYW4ndCBnZXQgaXQgdG8gd29yayB3aXRoIEJybFRUWSwgYW55IGlkZWEgPwoKLS0g
Ck1pY2hhw6tsIENhcm9uIENvdXR1cmllcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0
