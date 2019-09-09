Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EEAADDF3
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:22:24 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 671547FDF6;
	Mon,  9 Sep 2019 17:22:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4871060BF3;
	Mon,  9 Sep 2019 17:22:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E42CE1802217;
	Mon,  9 Sep 2019 17:22:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HMKSN030057 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:22:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F99E10016EB; Mon,  9 Sep 2019 17:22:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A16E10018F8
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:22:17 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0437081F0D
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:22:16 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id u68so4895517ybg.1
	for <blinux-list@redhat.com>; Mon, 09 Sep 2019 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:date:references
	:to:in-reply-to:message-id;
	bh=aCbYOkSy9F9apgYlUWvc0WordGKzlpdYWzSRaqrg59M=;
	b=dvO49B0RS646kbW2KQXLOMonn/sZBG9xdX9dxL+E32ywMLopWIO5Ty/hFpIUCCTTvx
	rXg/R4N439UTrGbFI2JPKHYF20gKaPqwQW9DpBDc80/n7CfW7J6OB9aI/2WoP4MPTenJ
	rUCofgw5UTArm3IpqUou/CWISE1hIoTcNmXD05mOzz5Mrhl4N7xJGZecUAka//A/2AeS
	d2skpffZ6sQ8pGTYTeByYP0msfvuo7js1En7ujJfr1zqESA4JnNmS7IRLMuRUATPK9Av
	BpeMiiN6LXUU1iBkNNC9ZUGJCE2ZB0tMZtQxJ+808oXhHfHlCGeoNExayPJe6lS/JOOq
	VArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=aCbYOkSy9F9apgYlUWvc0WordGKzlpdYWzSRaqrg59M=;
	b=dap9+m1rjPY63FSiiBb/fi2NKwy93/4dOczBa2jKDHlNa+SY3nHhvnvkKG9VOHy5rZ
	x/Wd9iQPvp4kHGMN5csok5JJsS3+R+4CPhaidAeIM0oOk2O5gzIPIEtM20YtLc0rXs8I
	+ed6TxYPE9X/j1CS7fERzYDWeupt36po0D5BO358xl4MggliPMbJL84h/p5mY+tE+925
	bXYXqTePiWiHAS47YxFiTJ9XTIDmnLoeSECvDjaaXXZTcWSETIix8SAkWHSYJBad64Ut
	wJ+kTDE3U9fEgloIQaF9J8syKMzL8cqZFOpk9n5sT65yq9B71XtqfwTLI2H75WLpZzHe
	FPlQ==
X-Gm-Message-State: APjAAAUU3jnZxA6g5mvHXDWRoPEoaifGQh1fjTRUDd2FjZfYWBvhVYea
	F6XO8HOVG/c6rRKT4zmEMILLhDGAohY=
X-Google-Smtp-Source: APXvYqwHWYHIpr8l+Dc3jnTUt8gmUleTi9A9ONDglqGp8tKs5f4zBs+a/MZ+B/38ijr2bZqu+aYhcA==
X-Received: by 2002:a25:838a:: with SMTP id t10mr7749828ybk.414.1568049735056; 
	Mon, 09 Sep 2019 10:22:15 -0700 (PDT)
Received: from [192.168.0.32] ([204.29.85.5])
	by smtp.gmail.com with ESMTPSA id 80sm3165936ywp.56.2019.09.09.10.22.14
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Sep 2019 10:22:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: Comunicating from your Linux machine?
Date: Mon, 9 Sep 2019 12:22:13 -0500
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
Message-Id: <53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Mon, 09 Sep 2019 17:22:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Mon, 09 Sep 2019 17:22:16 +0000 (UTC) for IP:'209.85.219.180'
	DOMAIN:'mail-yb1-f180.google.com'
	HELO:'mail-yb1-f180.google.com' FROM:'r.d.t.prater@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.125  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.219.180 mail-yb1-f180.google.com 209.85.219.180
	mail-yb1-f180.google.com <r.d.t.prater@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x89HMKSN030057
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 09 Sep 2019 17:22:23 +0000 (UTC)

Email and IRC are just about the only options that are customizable for a blind Linux user.

> On Sep 9, 2019, at 12:18 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi everyone,
> 
> Seeing that Skype, at this time is pretty much unusable, and Google hangouts and Duo can only, as far as I know be accessed threw web interfaces, what would you recommend I use in stead?
> 
> Thanks so long for your help.
> 
>  Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from Thunderbird using Arch Linux
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
