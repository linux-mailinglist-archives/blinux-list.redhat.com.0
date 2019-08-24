Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B799BFF3
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 22:05:12 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4DD08C057F88;
	Sat, 24 Aug 2019 20:05:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66DCA5C553;
	Sat, 24 Aug 2019 20:05:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3667B4A486;
	Sat, 24 Aug 2019 20:05:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OK47Li013301 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 16:04:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8BD5A5D704; Sat, 24 Aug 2019 20:04:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 871CB5D6D0
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 20:04:05 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 957643086246
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 20:04:04 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id b1so11813452otp.6
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=w7UeNmUQm06cDjy/JwTB6pLtVX3918UfOjeR7PowKFE=;
	b=u7NaBfw9qbN5YG8abruQgkQa/Tx6Onyv3I9KdiJm+5hR7nnKbAhwuTjgRnFhqm0+VD
	65HU6Qh3D4E3T0tnHi9skLqkIu07lW/vav04WMThQw9lRN/odzedOP6A2InVgwQXivWh
	YN1wIAyd/JUBzrddVfzSbw+QDL5yONNpwc4YvMmf//Hd/fCtDPYjmXae5PZb0Dpd1lB4
	tpVD4WMQuBljCdylu5dckQwR203fGq028UUuDJ6IC5zCZClypHuS0P36P6r6mhb5yGwu
	GOoAdpqTzi0qzCcZ1fbVJ6vD31/gYcRwxKWG1sCvaWlQBCN69sNoSA/PmgTouxgt1YHy
	56QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=w7UeNmUQm06cDjy/JwTB6pLtVX3918UfOjeR7PowKFE=;
	b=n9mByyQkk6BOOVAtxbbitxP0H3cg4k+iHFQ8UVuTpxZxOcBpi3WpiG3bS2pgApmTuO
	KuZlS1Akb/vTmcru1Sl9n7SsNqQLYbJOwLquu+tBBo/RPtCbyhMGb/aiVqJR2wMD7Er7
	4Hm5sqUlOv4eurCWnGoYPSx7ttb5LuexSd1muYlO3VZjFmZO5/EfOy+lHckwH7dR05iS
	Ech1nUolNPwy880sVHftzfDLhA153JXAQXEaU1B+7Pr8A5Rk+cJPx8/u/f6/MRVgcnWy
	BHzyBUEUaQ+h0eaokwzi+plUSg8T7Cmosv9P/6O0h0cxcszufjHgxCq5/tU9ZbtMT4+T
	dCJg==
X-Gm-Message-State: APjAAAX67ISEjBp6xf76VcWACKkOH6Zw4IRkQ/VxtEE4pDVMj6noNKMO
	Rt0TvxZpzsrn5O3ZruBwzFIufr/3wr9Nd/Vtpt2q5Q==
X-Google-Smtp-Source: APXvYqzmatwPureJA/8HbIvkgwtHVBXe4yTwEuz5XmwPwW9sJrX7YqPsSsIjsnowzpcy4j1YL4L5U7L3CuYs36P6vHs=
X-Received: by 2002:a9d:66d2:: with SMTP id t18mr7367053otm.355.1566677043925; 
	Sat, 24 Aug 2019 13:04:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sat, 24 Aug 2019 13:04:03 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908241525220.31524@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
	<DCD8C4F3-9F51-486C-8E83-609B51DD8B03@gmail.com>
	<Pine.LNX.4.64.1908241525220.31524@server2.shellworld.net>
Date: Sat, 24 Aug 2019 20:04:03 +0000
Message-ID: <CAO2sX30t5OyZF0UGSbBBHfAVqdK6vYZjbPB6V4chAT5OvU28CQ@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Sat, 24 Aug 2019 20:04:04 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Sat, 24 Aug 2019 20:04:04 +0000 (UTC) for IP:'209.85.210.44'
	DOMAIN:'mail-ot1-f44.google.com' HELO:'mail-ot1-f44.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.44 mail-ot1-f44.google.com 209.85.210.44
	mail-ot1-f44.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Sat, 24 Aug 2019 20:05:11 +0000 (UTC)

If all web designers and browser developers adhered to W3C standards,
I suspect most of these problems would be non-existant...

However, I suspect those who make an effort to comply with standards
are in the minority, that those who actually manage compliance are
even rarer, and that a majority of those not trying for compliance are
not even aware the W3C exists. I also suspect the W3C is completely
lacking in the ability to enforce their standards, have my doubts any
legal mandates that are enforcible align completely with W3C
standards, and suspect the average user has negligible leverage to
hold those who violate web standards accountable, especially if the
site is hosted in a different country or the site owner lives in a
different country from the user with the grievance.

Standards are nice and all, but their usefulness is much diminished if
most of the relevant individuals are just ignoring the standards and
doing their own thing, and personal experience would suggest that's
exactly what's happening, especially if mouse/touch-only elements and
vision tests in place of turing tests are violations of the standards
as the abominations that are JavaScript clickables and Captcha are all
over the place.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
