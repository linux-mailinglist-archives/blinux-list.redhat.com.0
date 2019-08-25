Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 231769C677
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 00:53:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6680910F23E3;
	Sun, 25 Aug 2019 22:53:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2351A19C70;
	Sun, 25 Aug 2019 22:53:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A58A25540;
	Sun, 25 Aug 2019 22:53:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PMqu4J012375 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 18:52:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 54E3E1E3; Sun, 25 Aug 2019 22:52:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx05.extmail.prod.ext.phx2.redhat.com
	[10.5.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5053D5D9CC
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 22:52:53 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1CFCC20261
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 22:52:53 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id c7so13546176otp.1
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 15:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Kd4NP/oydYz/QdaRVRVEkGtfWHQCYxLzU0Q+/pcHlX0=;
	b=KJy5XNRR4Yrde2qV4ZQ74CsH5ZkyHH9ZUvnmcbzziD1Qyh3jKi5X2k6AiJc7z/u31W
	c5cBp+Drl1OR0U4+Uzuv2zIDPe/BPHiEoIhiNnIvB0Wbfhcw6oLwKsFJx9lfCfj40161
	GWC+jxGkpTftouunU5QI7Zhbv4vxT8qMEFcOUiUyaubdyN7Szhyc4Z9p0NQyHdU31d0W
	2lQjIgu8h22jEkCdBf0lSUxw1et1CVA84G0u+LkyJ1owkzBH2AmzPCCOliZEKDv+hfiS
	Aoy/v7jP+0lvlmFI44fSOBRKNeAE0OYEekRBHRs24+B6i4IqkTqdUeRgIeaOxXE2nd33
	ASMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Kd4NP/oydYz/QdaRVRVEkGtfWHQCYxLzU0Q+/pcHlX0=;
	b=jy7pRPsi12V45U16URNHVJ2hYS8MvWQzaX/ZYGIB56SrQcf7aMzB4k9fS2mUg722/J
	UXQTYpwETnXxB0Fd7zn+3KtfXEdqtXN0jF+sZPkU1YqJcLhJAk9sjOQ649ryQ62hUpAx
	vtZQGwqZfcDYdZf8l7TDDYQLwebIKydXrYuHKBSrto5xAz+r/TtqE7Wz5sLx2tI5G0G/
	ZaLdVansHbwy0UV8wCrXaJ87OLNqxTmb4nYOsm4T44f/vxo9AowDCGNTRdDfYH2Rn5mZ
	sELxnN3KCkoISosEzs+Ry3FCwa1E1eef0ta7LBGH/1WeWv94Q9RgfSNxlZi7kD3wlZxk
	PvkQ==
X-Gm-Message-State: APjAAAVTpBc2eHJLSMYH6CyK5fFe9X9PDBcz1a1pGqnWxQqsge7JMlK2
	yZSI0vKr0PfQFWRo5r8BtqTDoddNbLLcHwzksn2P/g==
X-Google-Smtp-Source: APXvYqzYE86+PfaNUkbrZS6TN3x8nBdf3f9BNAst2RETu/GjdHNyZv7pP9qB9R9UGOFi/X4ZKqrmX5/iedxy8d9yYk8=
X-Received: by 2002:a05:6830:1018:: with SMTP id
	a24mr9312533otp.191.1566773572565; 
	Sun, 25 Aug 2019 15:52:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 15:52:52 -0700 (PDT)
In-Reply-To: <64b28f07-c53c-1943-b5de-e27bc6222f24@gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
	<64b28f07-c53c-1943-b5de-e27bc6222f24@gmail.com>
Date: Sun, 25 Aug 2019 22:52:52 +0000
Message-ID: <CAO2sX31Df3_6iHD8bF41e3E9A0D-0vJs1Xs4nTouVk4RV5uJUQ@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.29]);
	Sun, 25 Aug 2019 22:52:53 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Sun, 25 Aug 2019 22:52:53 +0000 (UTC) for IP:'209.85.210.53'
	DOMAIN:'mail-ot1-f53.google.com' HELO:'mail-ot1-f53.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.53 mail-ot1-f53.google.com 209.85.210.53
	mail-ot1-f53.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.29
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]); Sun, 25 Aug 2019 22:53:02 +0000 (UTC)

Since when is Microsoft committed to accessibility? I thought the
whole reason NVDA exists is because Window's built-in screen reader is
garbage and JAWS is prohibitively expensive. Also, I thought Microsoft
was pretty much the poster child for shrugging off lawsuits and
continuing to screw over their customers as much as possible.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
