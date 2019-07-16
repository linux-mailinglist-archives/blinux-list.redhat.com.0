Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id DE49A6A2B8
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2019 09:17:09 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 806D344BD1;
	Tue, 16 Jul 2019 07:17:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3BDB60A35;
	Tue, 16 Jul 2019 07:17:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5FE9441F63;
	Tue, 16 Jul 2019 07:16:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6G7GlkP017770 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jul 2019 03:16:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1171B6013A; Tue, 16 Jul 2019 07:16:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C635600C4
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 07:16:44 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C82E32BE98
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 07:16:43 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id h6so38270615iom.7
	for <blinux-list@redhat.com>; Tue, 16 Jul 2019 00:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=l3iLQNDGz8vQ0BS3xALEsXoGB5honz6EnKldCHEoetU=;
	b=SLiBIz5odUU5rviZgJ0G6k+szrxNnWuvMkMkzgRbblgOmqa8gq6Ype0ugCSM0n0ean
	WmNn1NVwUasIVkLc5rQVY6Jf8+KETbUj49OksJEBX4DX9CdE1/NZZfxlmXKEdlKmebcc
	Zl9DEGCCW2O88B20aKmRL3OMisrqjiyiAHOfJFmsD+sxwt4ck0s3BlGyxpK0PgE0HEcY
	gkhVfWsfP1sjj4NHUv/tcl0ecpcdo/Yt7wjzL2+xtlAxWuO5jh9pbJwTwy8x6ZhK3lqp
	jV/7drEjBVT5QKB51Qc+9IDeEL/jr5pxEHG3R5i7plld7zDuuD3neMEzIByevhovAW8k
	doDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=l3iLQNDGz8vQ0BS3xALEsXoGB5honz6EnKldCHEoetU=;
	b=bworvn1KAONQSNDFJ/fTgj8FafK8PfHkMFy9JKipcnUa7vdsTG/ZZoyHQHmLCcvhVS
	BdxW7ogVL6NgYGx21p54dooFjcvE+7r0VbJ7z9ZHVgXzlzB154edtLZ4K3AdzRqH5b+7
	JzY89vrycPVL3c9o7p+uYgnNbFb3IkhK0A8HgyTgPQQnP1AXFj2IBEIteNyabkHfismI
	FTaLWz4maRd9yWGKfeIn1hh9oQ4m5zAH+KYVgVU2Muiv0KB2LdXtuyA5zx75mzCsTGAi
	Z//odd6cjwbTBiNMwt31azCDxc1LY+9jWYTc9EkvhtKMu7YDcTUMyRq1OhPjr0Axpv2k
	dmCA==
X-Gm-Message-State: APjAAAU3Ef7Zzmx51CQuUjboxSAO4g8hEEWgQd/DsK+B+SvI72zXOf4t
	TP4sgYE1kyHUFHkWsqLYPT79dhZ7
X-Google-Smtp-Source: APXvYqz1q2RNI2MfXJFmZymJnl5nqem1JgDoWSsQ1gwe718vKx64suIJpCaaWTUAFEzb1Fwea+qAFQ==
X-Received: by 2002:a5d:8508:: with SMTP id q8mr29556311ion.31.1563261403039; 
	Tue, 16 Jul 2019 00:16:43 -0700 (PDT)
Received: from [192.168.0.2] ([65.34.110.88]) by smtp.gmail.com with ESMTPSA id
	u17sm17361287iob.57.2019.07.16.00.16.41 for <blinux-list@redhat.com>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Jul 2019 00:16:41 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: mumble command-line client
Message-Id: <28EEB0BA-CB88-4203-B999-16EDD2DE51B2@gmail.com>
Date: Tue, 16 Jul 2019 02:16:38 -0500
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.39]);
	Tue, 16 Jul 2019 07:16:43 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Tue, 16 Jul 2019 07:16:43 +0000 (UTC) for IP:'209.85.166.48'
	DOMAIN:'mail-io1-f48.google.com' HELO:'mail-io1-f48.google.com'
	FROM:'montanalag@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.166.48 mail-io1-f48.google.com 209.85.166.48
	mail-io1-f48.google.com <montanalag@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 16 Jul 2019 07:17:08 +0000 (UTC)

Hi,
Is there such a beast?
tia.

--Brian Tew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
