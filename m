Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB7D1BC09
	for <lists+blinux-list@lfdr.de>; Mon, 13 May 2019 19:37:58 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 45ECB882EA;
	Mon, 13 May 2019 17:37:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 261B3608AC;
	Mon, 13 May 2019 17:37:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4D7441F58;
	Mon, 13 May 2019 17:37:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4DHbsuf004761 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 13 May 2019 13:37:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A851D5C224; Mon, 13 May 2019 17:37:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx02.extmail.prod.ext.phx2.redhat.com
	[10.5.110.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2BE95C21F
	for <blinux-list@redhat.com>; Mon, 13 May 2019 17:37:52 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BBBE187628
	for <blinux-list@redhat.com>; Mon, 13 May 2019 17:37:51 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id f12so4798126plt.8
	for <blinux-list@redhat.com>; Mon, 13 May 2019 10:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=rGqcwf7v7JTMJEVNsvniCiVR4J/8SyojQU7hKJevxlA=;
	b=gfLzeaUBh6gsstoT4zaNhbgpXyPZpfWTesYdtcIIKoXvvAzTE7mbPvj8sNuOSoHHjR
	3tKvozld5n4T8U7zl0B1xP8+deWWLZiuO8m03FIXFza9bLC+b9C8rnyMcqn2Yq9lRX3N
	nQIzEq3JmEQxQV4zGcU0tsx0/HPjBJ61ddoexE12PAdZiH5VwJmyOogRrKbURgOKIZ5h
	rSVqfVZ0XqzMLnjPo51Dg8OrSI9WG/YBBb3xMdOaeTDGSEuX/A3zeN5k+zklWLKvDNq5
	D7LMHqufSuSd1GiuJKAX87Opf2zpnMtu4t69DVmroYWE2B9keMX0GTbpVSzTshmXURWG
	jgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=rGqcwf7v7JTMJEVNsvniCiVR4J/8SyojQU7hKJevxlA=;
	b=sBnXOuJ7nyjPigbPnW6o3oALYuuWBkEFR0JZN2BNUWo4TkGuzi3IxEyejqGJL4gSDI
	sZaEE0VVIS79mu22xCnVYBG9+4SAYjffb7Rdg+6+YHJaxfl/o31AIoQyGBlVHEl398P7
	i3S3GmRPHGDllFAD3aEmJbTt/DGER4NlZHmOSfAVxghv5FYbKQiE2kJ1E9xKkMBeJIgB
	sGn8ndcBG8DhfrhxRcCFoYtZmD788FKkdkcNcOwLu0XD2kgiCYQjvjv+DifIFFwta0Cn
	awVsuktbC4HT2M5hsJ/eL+BNmIvGB8jfSo9ISNZdZ55V1bIfqNgx4ZiciH2+cJcCczCB
	pk5g==
X-Gm-Message-State: APjAAAXVjcvhxQ/nfBruQuVjEW0m5xClQU4duO0PPTFAx3XFLw659DQj
	X5Hi7kkL+dYcceSYAfp5g3bnOXfPayk=
X-Google-Smtp-Source: APXvYqx818d6ZpzGY1M1B4Iq2Rg2T8PMzi6+WdnJHzGAWacIdS5MOCk2VpjJRsBpN9I0bfGgc/NFcA==
X-Received: by 2002:a17:902:694b:: with SMTP id
	k11mr32733664plt.307.1557769070897; 
	Mon, 13 May 2019 10:37:50 -0700 (PDT)
Received: from [192.168.1.181] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	37sm14396261pgn.21.2019.05.13.10.37.49 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 May 2019 10:37:50 -0700 (PDT)
Message-ID: <20190513.173652.616.10@[192.168.1.181]>
To: blinux-list@redhat.com
Subject: Re: The Sword project.
Date: Mon, 13 May 2019 12:36:52 -0500
MIME-Version: 1.0
In-Reply-To: <6B091BAF-7CC4-47D3-ACE4-777004374FF9@pipkrokodil.se>
References: <6B091BAF-7CC4-47D3-ACE4-777004374FF9@pipkrokodil.se>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.26]);
	Mon, 13 May 2019 17:37:51 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]);
	Mon, 13 May 2019 17:37:51 +0000 (UTC) for IP:'209.85.214.172'
	DOMAIN:'mail-pl1-f172.google.com'
	HELO:'mail-pl1-f172.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.11  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_PASS) 209.85.214.172 mail-pl1-f172.google.com 209.85.214.172
	mail-pl1-f172.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.26
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x4DHbsuf004761
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
Content-Type: multipart/mixed; boundary="===============9040624665134695334=="
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 13 May 2019 17:37:57 +0000 (UTC)

--===============9040624665134695334==
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

What is this project.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <Blinux-list@redhat.com>
Date: Mon, 13 May 2019 19:29:13 +0200
Subject: The Sword project.

> Hi!
Is anyone here familiar with the Sword project?
Are there pre-compiled versions that can be downloaded from the Debian repository or the Ubunt Repo?
I know Xiphos can be installed Via the repo but  isn’t Xiphos part of Sword or is Sword part of Xiphos?
I am a bit confused?
Thanks in advance.
/A

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


--===============9040624665134695334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--===============9040624665134695334==--
