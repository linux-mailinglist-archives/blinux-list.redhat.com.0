Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 43251826D7
	for <lists+blinux-list@lfdr.de>; Mon,  5 Aug 2019 23:28:24 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 890D6307F5E7;
	Mon,  5 Aug 2019 21:28:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47B8E5C1D8;
	Mon,  5 Aug 2019 21:28:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1AF6D18089C8;
	Mon,  5 Aug 2019 21:28:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x75LSJq8011806 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 17:28:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5C47B5DE5B; Mon,  5 Aug 2019 21:28:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx13.extmail.prod.ext.phx2.redhat.com
	[10.5.110.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56E8F5DD64
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 21:28:17 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 28098300189C
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 21:28:16 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id 4so29950881pld.10
	for <blinux-list@redhat.com>; Mon, 05 Aug 2019 14:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=AqawBcP0tiQ/RARwv//q8oxJ9pH+NLjMvBV4I5aQSz0=;
	b=RyjrW3D083Ch8khDIE6Jed45INW9rQ3kpiWZjpEmP85uvmpUiE/2dRgxX04YAh8lKs
	mU68r3IGpkWqiq1nAHHzcMJTrK04aSqRxyO/tYJzZ2sF0ZODF5RcL9djBNhNUgGvpr6b
	ZPrS9SExRGr7oVgDST3D0zWuzszWqhBOpBtgU3BHYZyDK4H318kk2mlX4uMRCNp4u71l
	pBMUGPzu6b9cFMFfhe6lT3c+gXGuwFzomgEyfP384FOLzBOsdPsujV2qTLo9CK88y6zm
	IOxypEPUhaUYTRx5qoQ2fLUZNqzO5vZb3cAA+VoRXLur5HtPPimRiKno/JhGlKDiBGl/
	I9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=AqawBcP0tiQ/RARwv//q8oxJ9pH+NLjMvBV4I5aQSz0=;
	b=LVgPFFoXnghltqRS+d6Pq5c+F5jDQno8IZPKmbs2zxVYCHOcFtPw5MVrWhRyBXY2F2
	+MbHNY+x9d56jlXcP+dZ+0AKFSuMm+XlVcyf5Lnvl6FFkovrRLiZQYh3Q5hYaYZhPiH8
	l2jvZlGvQA8dEqtq+JXD9VwSulqDgIKs4OB4FA3OKiqwMNVk3vafX58iPa/J9cpuL9aZ
	Jk1oao9HO0Nc17kWr4vzZhBbnjRVfPIqyw4kmYupqFHtN0kTE5gEzyLDosH23pq81DL5
	lZf7Mjt0kjdEKODkUxzf69r3arkkvVI+dpw0NzURpugGfz+lJ36xrXOEWYopp4GJwhjI
	H78A==
X-Gm-Message-State: APjAAAXmrTAUt3poFpfctFCH+40jxY5gXxL3rD3sOqKyYMbTttJLkJS1
	8DDZTfGthhab6UpySVqsXkKI6Jma
X-Google-Smtp-Source: APXvYqxkWsgyPiynjlC+mD6vvJtsMGd/GnTabVnShYFnI+8RiUn/CA/Vepa4z59TxlIt+JTFSm7xuQ==
X-Received: by 2002:a17:902:e58b:: with SMTP id
	cl11mr142446197plb.24.1565040495199; 
	Mon, 05 Aug 2019 14:28:15 -0700 (PDT)
Received: from [0.0.0.0] ([67.230.224.68]) by smtp.gmail.com with ESMTPSA id
	135sm92854183pfb.137.2019.08.05.14.28.14 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Aug 2019 14:28:14 -0700 (PDT)
Message-ID: <20190805.212710.331.4@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: No F Key Boot Menu
Date: Mon, 05 Aug 2019 16:27:10 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.42]);
	Mon, 05 Aug 2019 21:28:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]);
	Mon, 05 Aug 2019 21:28:16 +0000 (UTC) for IP:'209.85.214.176'
	DOMAIN:'mail-pl1-f176.google.com'
	HELO:'mail-pl1-f176.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.214.176 mail-pl1-f176.google.com 209.85.214.176
	mail-pl1-f176.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.42
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x75LSJq8011806
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Mon, 05 Aug 2019 21:28:22 +0000 (UTC)

Getting into the bios isn't the problem. It's selecting a device to boot from which is.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Mon, 5 Aug 2019 17:21:14 -0400
Subject: Re: No F Key Boot Menu

> The delete key can get you into bios on some systems too.
> 
> On Mon, 5 Aug 2019, Linux for blind general discussion wrote:
> 
> > Date: Mon, 5 Aug 2019 15:59:41
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Re: No F Key Boot Menu
> >
> > Often the escape key can be used to bring up a boot menu. That being
> > said, there's usually an option in bios to set more than 1 boot drive,
> > such that if the 1st 1 doesn't contain bootable media, it'll move onto
> > the 2nd 1, etc.
> >
> > On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > > My bios:
> > > Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> > > UEFI: American Megatrends Inc. 2.08 06/28/2019
> > > does not seem to have a function whereby you can select a device to boot
> > > from using one of the function keys. Instead, one must physically go into
> > > the bios and change boot order, if, for example, you wish to boot from a
> > > flash drive to install an OS. And if that flash drive is subsequently
> > > removed, the system will not boot, until you go into the bios and change the
> > > boot order, again.
> > > My question: is this normal bios behavior these days, or is something wrong
> > > in my particular implementation. I turned off the secure boot function in
> > > there. Would turning that on fix this? What else might I look for in the
> > > bios to either (a) allow for falling back on different devices should one be
> > > removed or (b) to allow the function key boot menu found in previous bios
> > > implementations.
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> >
> >
> 
> -- 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
