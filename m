Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D6A77C7A
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2019 02:14:42 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AACBE3082199;
	Sun, 28 Jul 2019 00:14:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FE1A19D7C;
	Sun, 28 Jul 2019 00:14:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C6A841F40;
	Sun, 28 Jul 2019 00:14:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6S0EJV6030733 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Jul 2019 20:14:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6802E19D7D; Sun, 28 Jul 2019 00:14:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx19.extmail.prod.ext.phx2.redhat.com
	[10.5.110.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61BDB19D7C
	for <blinux-list@redhat.com>; Sun, 28 Jul 2019 00:14:17 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 78D2A307D8BE
	for <blinux-list@redhat.com>; Sun, 28 Jul 2019 00:14:16 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id m8so21387978lji.7
	for <blinux-list@redhat.com>; Sat, 27 Jul 2019 17:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:date:message-id:user-agent:subject:mime-version
	:content-transfer-encoding;
	bh=LauNUhIM6kH8fYqeLJo+M8RC/YeelJonu+hRqlXBFaY=;
	b=BcxMpzrwk5OSpA5Ie8UuODxLslYeQnnYX6oQl5Ac8/+dYsjQyq1QScaF014beqUUV5
	LrrQuKrILYOvOtQ/S9F2Q1xcQKSOtYj4AsDN+83FCut6piic5ZeFX5YnfKLTuRwWc7Uh
	yvTHGgtJnXssJvRfUnxCy2zHQTnGRBbb5yO58eBCoyTmq86LwVa6fDrAQWP+sJmKbxcl
	MhXaskmkqra8VhOKbE0bisUjRbfVCDU4XupMsUTLI8G7Bkpwmis5yJ39tOJqsFQBAN5D
	HuJxMRKJqAxEQR8HMAam1FvmApaohli57TXcO16PBD/B4WZjm4ABh31jp3HYSXjSY0Fm
	VoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:date:message-id:user-agent:subject
	:mime-version:content-transfer-encoding;
	bh=LauNUhIM6kH8fYqeLJo+M8RC/YeelJonu+hRqlXBFaY=;
	b=BlJAPh758JyX1MWXUoXnwSMMnX8tIymMVgj/7i9w42aPI1Dh0WpdOoJzFVWW4zYk+Q
	IO+xtU4pf89lfOy1YUVmwq2iqr8cJCIDBc9tw6obJR6Z/Zcvl8mKWuQz0xEG4jXwE82W
	5WbH9Mi6/Igfr6AHf+gGvmXqXqfHC/k19sQ4ytKOdypAediusfPyiScluPCXrEwzJH5w
	0d4rut95onJwcfNgnw5OQLccOJx1lrxhe4QX9r2YSBc5fcUNrhSGdEjvsqiqNOYx8efo
	ok0X+z8Nt8lgL3o2N8yENj0yLctFAZjS7nEU5yhVxbPPyzKCFOXdd9b+udNqEKv7zPfT
	8k5g==
X-Gm-Message-State: APjAAAVsdz4jF3KQneOuMomIFkkGBqsNfxhVoLu6Khdemozv7hqakss2
	FMYqvQOyso4YFUjLO+22V0vOd7FUSko=
X-Google-Smtp-Source: APXvYqxzMNemrb3jISDOnWIluF/4A8YI9YpKFeQiCUoqO1JJ8Rrm0OtL8/h//hF3ovGkE2NLFEdQGQ==
X-Received: by 2002:a2e:9643:: with SMTP id z3mr54614410ljh.43.1564272854729; 
	Sat, 27 Jul 2019 17:14:14 -0700 (PDT)
Received: from [100.115.92.2] (81-228-143-85-no527.tbcn.telia.com.
	[81.228.143.85]) by smtp.gmail.com with ESMTPSA id
	y29sm11516411ljd.43.2019.07.27.17.14.13 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Jul 2019 17:14:14 -0700 (PDT)
To: <blinux-list@redhat.com>
Date: Sun, 28 Jul 2019 02:14:13 +0200
Message-ID: <16c35ed8008.2746.afbff0009b353412c733e12e23e6ae2b@gmail.com>
User-Agent: AquaMail/1.20.0-1462 (build: 102100002)
Subject: dualboot win 10 debian
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.48]);
	Sun, 28 Jul 2019 00:14:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]);
	Sun, 28 Jul 2019 00:14:16 +0000 (UTC) for IP:'209.85.208.178'
	DOMAIN:'mail-lj1-f178.google.com'
	HELO:'mail-lj1-f178.google.com' FROM:'mjonsson1986@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.208.178 mail-lj1-f178.google.com 209.85.208.178
	mail-lj1-f178.google.com <mjonsson1986@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.48
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Sun, 28 Jul 2019 00:14:41 +0000 (UTC)

i have debian testing and windows 10 installed
i was able to boot debian the first times
but when i booted windows 10 my computer still boots into windows after 
every reboot
these tasks was easy before uefi took over bios..


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
